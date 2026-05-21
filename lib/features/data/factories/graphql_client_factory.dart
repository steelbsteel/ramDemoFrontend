import 'package:dio/dio.dart';
import 'package:gql_dio_link/gql_dio_link.dart';
import 'package:graphql/client.dart';
import 'package:ram_demo_app/core/config/api_config.dart';
import 'package:ram_demo_app/core/theme/app_values.dart';
import 'package:talker/talker.dart';

abstract final class QraphQLClientFactory {
  static GraphQLClient create({
    required Talker talker,
    required Dio dio,
  }) {
    final dioLink = DioLink(ApiConfig.graphqlEndpoint, client: dio);
    final link = Link.from([dioLink]);

    return GraphQLClient(
      link: link, 
      cache: GraphQLCache(store: InMemoryStore()),
      defaultPolicies: DefaultPolicies(
        query: Policies(fetch: FetchPolicy.networkOnly)
      ),
      queryRequestTimeout: AppValues.queryTimeoutDuration
    );
  }
}
