import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:rick_morty_app/core/graph_ql/graph_ql_provider.dart';
import 'package:rick_morty_app/features/list/model/rick_morty_list_model.dart';
import 'package:rick_morty_app/features/list/repository/rick_morty_list_repository.dart';

import '../../../factory/helpers.dart';
import '../../../factory/mocks.dart';

void main() {
  late MockGraphQlClient mockGraphQlClient;
  late RickMortyListRepository listRepository;

  setUpAll(() {
    mockGraphQlClient = createMockGraphQLClient();
    listRepository = RickMortyListRepository(mockGraphQlClient);
  });

  group('$RickMortyListRepository', () {
    test('Get $RickMortyListData with no filters', () async {
      // arrange
      final queryResult = createMockQueryResult<Object?>(mockGraphQlClient);

      when(() => queryResult.hasException).thenReturn(false);
      when(() => queryResult.data).thenReturn(mapRickMortyListData);

      // act
      final futureResult = listRepository.fetchListData();
      final result = await futureResult;

      // assert
      expect(futureResult, isA<Future<RickMortyListData>>());
      expect(result, isA<RickMortyListData>());
      expect(result, rickMortyListData);

      verify(() => mockGraphQlClient.query(any())).called(1);
      verify(() => mockGraphQlClient.queryManager).called(1);

      verifyNoMoreInteractions(mockGraphQlClient);
    });

    test('Get $RickMortyListData with filters', () async {
      // arrange
      final queryResult = createMockQueryResult<Object?>(mockGraphQlClient);

      when(() => queryResult.hasException).thenReturn(false);
      when(() => queryResult.data).thenReturn(mapRickMortyListData);

      // act
      final futureResult = listRepository.fetchListData(
        filter: {'name': 'Rick Sanchez'},
      );
      final result = await futureResult;

      // assert
      expect(futureResult, isA<Future<RickMortyListData>>());
      expect(result, isA<RickMortyListData>());
      expect(result, rickMortyListData);

      verify(() => mockGraphQlClient.query(any())).called(1);
      verify(() => mockGraphQlClient.queryManager).called(1);

      verifyNoMoreInteractions(mockGraphQlClient);
    });

    test('Get $RickMortyListData with exception', () async {
      // arrange
      final queryResult = createMockQueryResult<Object?>(mockGraphQlClient);
      when(() => queryResult.hasException).thenReturn(true);

      // act
      final futureResult = listRepository.fetchListData();

      // assert
      expect(futureResult, throwsA(isA<Exception>()));

      verify(() => mockGraphQlClient.query(any())).called(1);
      verify(() => mockGraphQlClient.queryManager).called(1);

      verifyNoMoreInteractions(mockGraphQlClient);
    });
  });

  group('$RickMortyListData with Riverpod', () {
    test('Get $RickMortyListData with no filters using Riverpod', () async {
      // arrange
      final container = setProviderContainer(
        overrides: [
          graphQlClientProvider.overrideWithValue(mockGraphQlClient),
        ],
      );

      final queryResult = createMockQueryResult<Object?>(mockGraphQlClient);

      when(() => queryResult.hasException).thenReturn(false);
      when(() => queryResult.data).thenReturn(mapRickMortyListData);

      // act
      final provider = container.read(rickMortyListRepoProvider);

      final futureResult = provider.fetchListData();
      final result = await futureResult;

      // assert
      expect(futureResult, isA<Future<RickMortyListData>>());
      expect(result, isA<RickMortyListData>());
      expect(result, rickMortyListData);

      verify(() => mockGraphQlClient.query(any())).called(1);
      verify(() => mockGraphQlClient.queryManager).called(1);

      verifyNoMoreInteractions(mockGraphQlClient);
    });
  });
}
