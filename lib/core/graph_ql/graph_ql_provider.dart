import 'package:graphql/client.dart';
import 'package:rick_morty_app/core/graph_ql/logs/logger_link.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'graph_ql_provider.g.dart';

@riverpod
GraphQLClient graphQlClient(Ref ref) {
  final httpLink = HttpLink('https://rickandmortyapi.com/graphql');
  final loggerLink = LoggerLink();

  return GraphQLClient(
    link: loggerLink.concat(httpLink),
    cache: GraphQLCache(),
  );
}
