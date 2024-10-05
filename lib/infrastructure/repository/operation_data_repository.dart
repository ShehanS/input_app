import 'dart:developer';

import 'package:downtime_pro/infrastructure/domain/metadata/model/factory_issue_list.dart';
import 'package:downtime_pro/infrastructure/domain/resource/model/factory_resource.dart';
import 'package:downtime_pro/infrastructure/graphql/factory_issue_list_query.dart';
import 'package:fpdart/fpdart.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:downtime_pro/infrastructure/graphql/factory_resource_query.dart';
import 'package:downtime_pro/infrastructure/services/graphql_service.dart';
import 'package:downtime_pro/infrastructure/domain/global/model/error_response.dart';

abstract class OperationDataRepository {
  Future<Either<dynamic, List<FactoryIssueList>>> fetchFactoryIssueList(
      String orgKey, FetchPolicy fetchPolicy);

  Future<Either<dynamic, List<FactoryResource>>> fetchFactoryResource(
      String orgKey, FetchPolicy fetchPolicy);
}

@LazySingleton(as: OperationDataRepository)
class OperationDataImpl implements OperationDataRepository {
  final GraphQLService _graphQLService;

  OperationDataImpl(this._graphQLService);

  @override
  Future<Either<dynamic, List<FactoryIssueList>>> fetchFactoryIssueList(
      String orgKey, FetchPolicy fetchPolicy) async {
    final client = _graphQLService.client;
    final QueryOptions options = QueryOptions(
        document: gql(getIssueList),
        variables: {'orgKey': orgKey},
        fetchPolicy: fetchPolicy);
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
        final List<dynamic> issuesList =
            data['fetchIssueList'] as List<dynamic>;
        final List<FactoryIssueList> issueEntities = issuesList.map((issue) {
          return FactoryIssueList.fromJson(issue as Map<String, dynamic>);
        }).toList();
        return right(issueEntities);
      } catch (e) {
        log('Error parsing issue list: $e');
        return left(unit);
      }
    }
    return left(unit);
  }

  @override
  Future<Either<dynamic, List<FactoryResource>>> fetchFactoryResource(
      String orgKey, FetchPolicy fetchPolicy) async {
    final client = _graphQLService.client;
    final QueryOptions options = QueryOptions(
        document: gql(getFactoryResources),
        variables: {'orgKey': orgKey},
        fetchPolicy: fetchPolicy);
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
        final List<dynamic> factoryResource =
            data['fetchFactoryResources'] as List<dynamic>;
        final List<FactoryResource> issueEntities =
            factoryResource.map((issue) {
          return FactoryResource.fromJson(issue as Map<String, dynamic>);
        }).toList();
        return right(issueEntities);
      } catch (e) {
        log('Error parsing issue list: $e');
        return left(unit);
      }
    }
    return left(unit);
  }
}
