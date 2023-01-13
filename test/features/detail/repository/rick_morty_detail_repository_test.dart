import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:rick_morty_app/core/graph_ql/graph_ql_provider.dart';
import 'package:rick_morty_app/features/detail/model/rick_morty_detail_model.dart';
import 'package:rick_morty_app/features/detail/repository/rick_morty_detail_repository.dart';

import '../../../factory/helpers.dart';
import '../../../factory/mocks.dart';

void main() {
  late MockGraphQlClient mockGraphQlClient;
  late RickMortyDetailRepository detailRepository;

  setUpAll(() {
    mockGraphQlClient = createMockGraphQLClient();
    detailRepository = RickMortyDetailRepository(mockGraphQlClient);
  });

  group('$RickMortyDetailRepository', () {
    test('Get $RickMortyDetailResult', () async {
      // arrange
      final queryResult = createMockQueryResult<Object?>(mockGraphQlClient);

      when(() => queryResult.hasException).thenReturn(false);
      when(() => queryResult.data).thenReturn(mapRickMortyDetailData);

      // act
      final futureResult = detailRepository.fetchDetailData(id: 1);
      final result = await futureResult;

      // assert
      expect(futureResult, isA<Future<RickMortyDetailResult>>());
      expect(result, isA<RickMortyDetailResult>());
      expect(result, rickMortyDetailData);

      verify(() => mockGraphQlClient.query(any())).called(1);
      verify(() => mockGraphQlClient.queryManager).called(1);

      verifyNoMoreInteractions(mockGraphQlClient);
    });

    test('Get $RickMortyDetailResult with exception', () async {
      // arrange
      final queryResult = createMockQueryResult<Object?>(mockGraphQlClient);
      when(() => queryResult.hasException).thenReturn(true);

      // act
      final futureResult = detailRepository.fetchDetailData(id: 1);

      // assert
      expect(futureResult, throwsA(isA<Exception>()));

      verify(() => mockGraphQlClient.query(any())).called(1);
      verify(() => mockGraphQlClient.queryManager).called(1);

      verifyNoMoreInteractions(mockGraphQlClient);
    });
  });

  group('$RickMortyDetailRepository with Riverpod', () {
    test('Get $RickMortyDetailResult with Riverpod', () async {
      // arrange
      final container = setProviderContainer(
        overrides: [
          graphQlClientProvider.overrideWithValue(mockGraphQlClient),
        ],
      );

      final queryResult = createMockQueryResult<Object?>(mockGraphQlClient);

      when(() => queryResult.hasException).thenReturn(false);
      when(() => queryResult.data).thenReturn(mapRickMortyDetailData);

      // act
      final provider = container.read(rickMortyDetailRepoProvider);

      final futureResult = provider.fetchDetailData(id: 1);
      final result = await futureResult;

      // assert
      expect(futureResult, isA<Future<RickMortyDetailResult>>());
      expect(result, isA<RickMortyDetailResult>());
      expect(result, rickMortyDetailData);

      verify(() => mockGraphQlClient.query(any())).called(1);
      verify(() => mockGraphQlClient.queryManager).called(1);

      verifyNoMoreInteractions(mockGraphQlClient);
    });
  });
}
