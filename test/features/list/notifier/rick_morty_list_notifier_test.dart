import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mocktail/mocktail.dart';
import 'package:rick_morty_app/features/list/model/rick_morty_list_model.dart';
import 'package:rick_morty_app/features/list/presentation/notifier/rick_morty_list_notifier.dart';
import 'package:rick_morty_app/features/list/repository/rick_morty_list_repository.dart';

import '../../../factory/helpers.dart';
import '../../../factory/mocks.dart';

void main() {
  setUpAll(() {
    registerFallbackValue(FakeAsyncValue<RickMortyListData>());
  });

  test('Initial test to build $RickMortyListData', () async {
    // arrange
    final mockListRepository = MockListRepository();
    final container = setProviderContainer(
      overrides: [
        rickMortyListRepoProvider.overrideWithValue(mockListRepository),
      ],
    );

    when(mockListRepository.fetchListData).thenAnswer(
      (_) => Future.delayed(
        const Duration(milliseconds: 100),
        () => rickMortyListData,
      ),
    );

    final listener = Listener<AsyncValue<RickMortyListData>>();
    container.listen(rickMortyListProvider, listener, fireImmediately: true);

    // act
    final state = container.read(rickMortyListProvider);

    // assert
    expect(state, const AsyncLoading<RickMortyListData>());
    await Future<void>.delayed(const Duration(milliseconds: 100));

    verifyInOrder([
      () => listener(null, const AsyncLoading<RickMortyListData>()),
      () => listener(
        const AsyncLoading<RickMortyListData>(),
        AsyncData<RickMortyListData>(rickMortyListData),
      ),
    ]);

    verifyNoMoreInteractions(listener);
    verify(mockListRepository.fetchListData);
  });

  test('Call fetchListData when I change page', () async {
    // arrange
    final mockListRepository = MockListRepository();
    final container = setProviderContainer(
      overrides: [
        rickMortyListRepoProvider.overrideWithValue(mockListRepository),
      ],
    );

    final delayedResult = Future.delayed(const Duration(milliseconds: 100), () {
      return rickMortyListData;
    });

    when(
      () => mockListRepository.fetchListData(page: any(named: 'page')),
    ).thenAnswer((_) => delayedResult);

    final listener = Listener<AsyncValue<RickMortyListData>>();
    container.listen(rickMortyListProvider, listener, fireImmediately: true);

    // act
    await container.read(rickMortyListProvider.notifier).fetchListData(page: 2);
    await Future<void>.delayed(const Duration(milliseconds: 100));

    // assert
    final asyncData = AsyncData<RickMortyListData>(rickMortyListData);
    verifyInOrder([
      () => listener(null, const AsyncLoading<RickMortyListData>()),
      () => listener(const AsyncLoading<RickMortyListData>(), asyncData),
      () => listener(asyncData, asyncData),
    ]);

    verifyNoMoreInteractions(listener);
    verify(() => mockListRepository.fetchListData(page: any(named: 'page')));
  });

  test('Call fetchListData when I filter data', () async {
    // arrange
    final mockListRepository = MockListRepository();
    final container = setProviderContainer(
      overrides: [
        rickMortyListRepoProvider.overrideWithValue(mockListRepository),
      ],
    );

    final delayedResult = Future.delayed(const Duration(milliseconds: 100), () {
      return rickMortyListData;
    });
    when(
      () => mockListRepository.fetchListData(filter: any(named: 'filter')),
    ).thenAnswer((_) => delayedResult);

    final listener = Listener<AsyncValue<RickMortyListData>>();
    container.listen(rickMortyListProvider, listener, fireImmediately: true);

    // act
    await container
        .read(rickMortyListProvider.notifier)
        .fetchListData(filter: {'name': 'Rick Sanchez'});
    await Future<void>.delayed(const Duration(milliseconds: 100));

    // assert
    final asyncData = AsyncData<RickMortyListData>(rickMortyListData);
    verifyInOrder([
      () => listener(null, const AsyncLoading<RickMortyListData>()),
      () => listener(const AsyncLoading<RickMortyListData>(), asyncData),
      () => listener(asyncData, asyncData),
    ]);

    verifyNoMoreInteractions(listener);
    verify(
      () => mockListRepository.fetchListData(filter: any(named: 'filter')),
    );
  });

  test('Initial test to build $RickMortyListData has $Exception', () async {
    // arrange
    final mockListRepository = MockListRepository();

    final queryException = MockOperationException();
    when(mockListRepository.fetchListData).thenAnswer(
      (_) => Future.delayed(const Duration(milliseconds: 100), () {
        throw queryException;
      }),
    );

    final container = setProviderContainer(
      overrides: [
        rickMortyListRepoProvider.overrideWithValue(mockListRepository),
      ],
    );

    final listener = Listener<AsyncValue<RickMortyListData>>();
    container.listen(rickMortyListProvider, listener, fireImmediately: true);

    // act
    final state = container.read(rickMortyListProvider);

    // assert
    expect(state, const AsyncLoading<RickMortyListData>());
    await Future<void>.delayed(const Duration(milliseconds: 100));

    verifyInOrder([
      () => listener(null, const AsyncLoading<RickMortyListData>()),
      () => listener(const AsyncLoading<RickMortyListData>(), any()),
    ]);

    verifyNoMoreInteractions(listener);
    verify(mockListRepository.fetchListData);
  });
}
