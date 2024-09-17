import 'package:downtime_pro/infrastructure/domain/app_config/entity/app_config_entity.dart';
import 'package:fpdart/fpdart.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:injectable/injectable.dart';

import '../graphql/app_config.query.dart';
import '../services/graphql_service.dart';
import 'dart:developer';
abstract class AppConfigRepository {
  Future<Either<Unit, AppConfigEntity>> appConfig(String token);
}

@LazySingleton(as: AppConfigRepository)
class AppDataRepositoryImpl implements AppConfigRepository {
  final GraphQLService _graphQLService;

  AppDataRepositoryImpl(this._graphQLService);

  @override
  Future<Either<Unit, AppConfigEntity>> appConfig(String token) async {
    final client = _graphQLService.client;
    final QueryOptions options = QueryOptions(
      document: gql(appConfigQuery),
      variables: {'token': token},
    );
    final result = await client.query(options);

    if (result.hasException) {
      log('GraphQL Exception: ${result.exception.toString()}');
      return left(unit);
    }

    final data = result.data;
    if (data != null) {
      try {
        final appConfig =
        AppConfigEntity.fromJson(data['fetchConfig'] as Map<String, dynamic>);
        log(appConfig.toString());
        return right(appConfig);
      } catch (e) {
        log('Error parsing appConfig: $e');
        return left(unit);
      }
    }
    return left(unit);
  }
}
