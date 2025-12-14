import 'package:graphql/client.dart';
import 'package:mocktail/mocktail.dart';
import 'package:rick_morty_app/features/detail/model/rick_morty_detail_model.dart';
import 'package:rick_morty_app/features/detail/repository/rick_morty_detail_repository.dart';
import 'package:rick_morty_app/features/list/model/rick_morty_list_model.dart';
import 'package:rick_morty_app/features/list/repository/rick_morty_list_repository.dart';

class MockGraphQlClient extends Mock implements GraphQLClient {}

class MockQueryManager extends Mock implements QueryManager {}

MockGraphQlClient createMockGraphQLClient() {
  final graphQlClient = MockGraphQlClient();
  final queryManager = MockQueryManager();

  when(() => graphQlClient.defaultPolicies).thenReturn(DefaultPolicies());
  when(() => graphQlClient.queryManager).thenReturn(queryManager);

  return graphQlClient;
}

class MockQueryResult<T> extends Mock implements QueryResult<T> {}

class _FakeQueryOptions<T> extends Fake implements QueryOptions<T> {}

MockQueryResult<T> createMockQueryResult<T>(MockGraphQlClient graphQlClient) {
  registerFallbackValue(_FakeQueryOptions<T>());

  final result = MockQueryResult<T>();
  when(() => graphQlClient.query<T>(any())).thenAnswer((_) async => result);

  final queryManager = graphQlClient.queryManager;
  when(() => queryManager.query<T>(any())).thenAnswer((_) async => result);

  return result;
}

final mapRickMortyListData = <String, dynamic>{
  'characters': <String, dynamic>{
    'info': <String, dynamic>{'count': 826, 'pages': 42},
    'results': <dynamic>[
      <String, dynamic>{
        'id': '1',
        'name': 'Rick Sanchez',
        'image': 'https://rickandmortyapi.com/api/character/avatar/1.jpeg',
        'status': 'Alive',
        'gender': 'Male',
        'species': 'Human',
        'location': <String, dynamic>{'name': 'Citadel of Ricks'},
      },
    ],
  },
};

final rickMortyListData = RickMortyListData(
  info: RickMortyListInfo(count: 826, pages: 42),
  results: <RickMortyListResult>[
    RickMortyListResult(
      id: '1',
      name: 'Rick Sanchez',
      image: 'https://rickandmortyapi.com/api/character/avatar/1.jpeg',
      status: ListStatus.alive,
      gender: ListGender.male,
      species: 'Human',
      location: RickMortyListLocation(name: 'Citadel of Ricks'),
    ),
  ],
);

final mapRickMortyDetailData = <String, dynamic>{
  'character': <String, dynamic>{
    'id': '1',
    'name': 'Rick Sanchez',
    'status': 'Alive',
    'species': 'Human',
    'type': '',
    'gender': 'Male',
    'image': 'https://rickandmortyapi.com/api/character/avatar/1.jpeg',
    'created': '2017-11-04T18:48:46.250Z',
    'origin': <String, dynamic>{'id': '1', 'name': 'Earth (C-137)'},
    'location': <String, dynamic>{'id': '3', 'name': 'Citadel of Ricks'},
  },
};

final rickMortyDetailData = RickMortyDetailResult(
  id: '1',
  name: 'Rick Sanchez',
  status: DetailStatus.alive,
  species: 'Human',
  gender: DetailGender.male,
  image: 'https://rickandmortyapi.com/api/character/avatar/1.jpeg',
  created: DateTime.parse('2017-11-04T18:48:46.250Z'),
  origin: RickMortyOriginResult(id: '1', name: 'Earth (C-137)'),
  location: RickMortyLocationResult(id: '3', name: 'Citadel of Ricks'),
);

class MockListRepository extends Mock implements RickMortyListRepository {}

class MockDetailRepository extends Mock implements RickMortyDetailRepository {}

// A Listener class, used to keep track when a provider notifies listeners
class Listener<T> extends Mock {
  void call(T? previous, T next);
}

class MockOperationException extends Mock implements OperationException {}
