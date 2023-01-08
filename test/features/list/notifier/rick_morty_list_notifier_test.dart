import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mocktail/mocktail.dart';
import 'package:rick_morty_app/features/list/model/rick_morty_list_model.dart';
import 'package:rick_morty_app/features/list/presentation/notifier/rick_morty_list_notifier.dart';
import 'package:rick_morty_app/features/list/repository/rick_morty_list_repository.dart';

import '../../../factory/helpers.dart';
import '../../../factory/mocks.dart';

void main() {
  test('Initial test to build $RickMortyListData', () async {
    // arrange
    final mockListRepository = MockListRepository();
    final container = setProviderContainer(
      overrides: [
        rickMortyListRepoProvider.overrideWithValue(mockListRepository),
      ],
    );

    final listener = Listener<AsyncValue<RickMortyListData>>();
    when(mockListRepository.fetchListData).thenAnswer(
      (_) async => rickMortyListData,
    );

    final notifier = container.read(rickMortyListProvider.notifier);
    container.listen(rickMortyListProvider, listener, fireImmediately: true);

    // act
    await notifier.build();

    // assert
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

    final listener = Listener<AsyncValue<RickMortyListData>>();
    when(() => mockListRepository.fetchListData(page: any(named: 'page')))
        .thenAnswer((_) async => rickMortyListData);

    final notifier = container.read(rickMortyListProvider.notifier);
    container.listen(rickMortyListProvider, listener, fireImmediately: true);

    // act
    await notifier.fetchListData(page: 2);

    // assert
    final asyncData = AsyncData<RickMortyListData>(rickMortyListData);
    verifyInOrder([
      () => listener(null, const AsyncLoading<RickMortyListData>()),
      () => listener(const AsyncLoading<RickMortyListData>(), asyncData),
      () => listener(asyncData, asyncData)
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

    final listener = Listener<AsyncValue<RickMortyListData>>();
    when(() => mockListRepository.fetchListData(filter: any(named: 'filter')))
        .thenAnswer((_) async => rickMortyListData);

    final notifier = container.read(rickMortyListProvider.notifier);
    container.listen(rickMortyListProvider, listener, fireImmediately: true);

    // act
    await notifier.fetchListData(filter: {'name': 'Rick Sanchez'});

    // assert
    final asyncData = AsyncData<RickMortyListData>(rickMortyListData);
    verifyInOrder([
      () => listener(null, const AsyncLoading<RickMortyListData>()),
      () => listener(const AsyncLoading<RickMortyListData>(), asyncData),
      () => listener(asyncData, asyncData)
    ]);

    verifyNoMoreInteractions(listener);
    verify(
      () => mockListRepository.fetchListData(filter: any(named: 'filter')),
    );
  });
}
