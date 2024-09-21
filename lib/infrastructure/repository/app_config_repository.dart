import 'dart:collection';

import 'package:downtime_pro/infrastructure/domain/app_config/entity/app_config_entity.dart';
import 'package:fpdart/fpdart.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:injectable/injectable.dart';

import '../domain/globle/model/error_response.dart';
import '../graphql/app_config.query.dart';
import '../services/graphql_service.dart';
import 'dart:developer';

abstract class AppConfigRepository {
  Future<Either<dynamic, AppConfigEntity>> appConfig(String token);
}

@LazySingleton(as: AppConfigRepository)
class AppDataRepositoryImpl implements AppConfigRepository {
  final GraphQLService _graphQLService;

  AppDataRepositoryImpl(this._graphQLService);

  @override
  Future<Either<dynamic, AppConfigEntity>> appConfig(String token) async {
    final client = _graphQLService.client;
    final QueryOptions options = QueryOptions(
      document: gql(appConfigQuery),
      variables: {'token': token},
    );
    final result = await client.query(options);
    final exception = result.exception;

    if (result.hasException) {
      log('GraphQL Exception: ${result.exception.toString()}');
      if (exception!.linkException != null) {
        final linkException = exception.linkException;
        log('GraphQL LinkException: ${linkException?.originalException}');
        return left("Cannot connect to the server!!!");
      } else {
        return left(result.exception?.raw
            ?.map((e) => Error.fromJson(e))
            ?.first
            ?.message);
      }
    }

    final data = result.data;
    if (data != null) {
      try {
        final appConfig = AppConfigEntity.fromJson(
            data['fetchConfig'] as Map<String, dynamic>);
        return right(appConfig);
      } catch (e) {
        log('Error parsing appConfig: $e');
        return left(unit);
      }
    }
    return left(unit);
  }
}
