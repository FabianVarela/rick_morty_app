import 'package:graphql/client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'graph_ql_provider.g.dart';

@riverpod
GraphQLClient graphQlClient(Ref ref) {
  final httpLink = HttpLink('https://rickandmortyapi.com/graphql');
  return GraphQLClient(link: httpLink, cache: GraphQLCache());
}
