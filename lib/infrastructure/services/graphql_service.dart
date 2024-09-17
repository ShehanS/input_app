import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:injectable/injectable.dart';

import '../../config/app_config.dart';

@singleton
class GraphQLService {
  late GraphQLClient _client;

  GraphQLService() {
    final HttpLink httpLink = HttpLink(graphql_url);

    _client = GraphQLClient(
      link: httpLink,
      cache: GraphQLCache(store: HiveStore()),
    );
  }

  GraphQLClient get client => _client;
}
