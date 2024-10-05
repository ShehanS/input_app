import 'package:downtime_pro/infrastructure/services/graphql_service.dart';
import 'package:fpdart/fpdart.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:downtime_pro/infrastructure/graphql/factory_issue_list_query.dart';
import 'package:downtime_pro/infrastructure/domain/metadata/model/factory_issue_list.dart';

abstract class MetaDataRepository {
  Future<Either<Unit, List<FactoryIssueList>>> factoryIssueList(
      String factoryId, String module);
}

@LazySingleton(as: MetaDataRepository)
class MetaDataRepositoryImpl implements MetaDataRepository {
  final GraphQLService _graphQLService;

  MetaDataRepositoryImpl(this._graphQLService);

  @override
  Future<Either<Unit, List<FactoryIssueList>>> factoryIssueList(
      String factoryId, String module) async {
    final client = _graphQLService.client;
    final QueryOptions option = QueryOptions(
        document: gql(getIssueList),
        variables: {'factoryId': factoryId, 'module': module});
    final result = await client.query(option);
    if (!result.hasException) {
      final List<dynamic>? data =
          result.data?['getIssueListByFactoryIdAndModule'];
      if (data != null) {
        try {
          final issueList = data
              .map((d) => FactoryIssueList.fromJson(d as Map<String, dynamic>))
              .toList();
          return right(issueList);
        } catch (e) {
          return left(unit);
        }
      } else {
        return left(unit);
      }
    } else {
      return left(unit);
    }
  }
}
