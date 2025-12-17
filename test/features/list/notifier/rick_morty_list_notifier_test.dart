import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mocktail/mocktail.dart';
import 'package:rick_morty_app/features/character_list/model/character_list_model.dart';
import 'package:rick_morty_app/features/character_list/presentation/notifier/character_list_notifier.dart';
import 'package:rick_morty_app/features/character_list/repository/character_list_repository.dart';

import '../../../factory/helpers.dart';
import '../../../factory/mocks.dart';

void main() {
  setUpAll(() {
    registerFallbackValue(const AsyncLoading<RickMortyListData>());
  });

  test('Initial test to build $RickMortyListData', () async {
    // arrange
    final mockListRepository = MockListRepository();
    final container = setProviderContainer(
      overrides: [
        rickMortyListRepoProvider.overrideWithValue(mockListRepository),
      ],
    );
    const parameter = (filter: null, page: 1);

    when(mockListRepository.fetchListData).thenAnswer(
      (_) => Future.delayed(
        const Duration(milliseconds: 100),
        () => rickMortyListData,
      ),
    );

    final listener = Listener<AsyncValue<RickMortyListData>>();
    container.listen(
      characterListProvider(parameter),
      listener,
      fireImmediately: true,
    );

    // act
    final state = container.read(characterListProvider(parameter));

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
    const parameter = (filter: null, page: 2);

    when(
      () => mockListRepository.fetchListData(page: any(named: 'page')),
    ).thenAnswer(
      (_) => Future.delayed(
        const Duration(milliseconds: 100),
        () => rickMortyListData,
      ),
    );

    final listener = Listener<AsyncValue<RickMortyListData>>();
    container.listen(
      characterListProvider(parameter),
      listener,
      fireImmediately: true,
    );

    // act
    final state = container.read(characterListProvider(parameter));
    expect(state, const AsyncLoading<RickMortyListData>());

    await Future<void>.delayed(const Duration(milliseconds: 100));

    // assert
    final asyncData = AsyncData<RickMortyListData>(rickMortyListData);
    verifyInOrder([
      () => listener(null, const AsyncLoading<RickMortyListData>()),
      () => listener(const AsyncLoading<RickMortyListData>(), asyncData),
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
    final parameter = (filter: {'name': 'Rick Sanchez'}, page: 1);

    final delayedResult = Future.delayed(const Duration(milliseconds: 100), () {
      return rickMortyListData;
    });
    when(
      () => mockListRepository.fetchListData(filter: any(named: 'filter')),
    ).thenAnswer((_) => delayedResult);

    final listener = Listener<AsyncValue<RickMortyListData>>();
    container.listen(
      characterListProvider(parameter),
      listener,
      fireImmediately: true,
    );

    // act
    final state = container.read(characterListProvider(parameter));
    expect(state, const AsyncLoading<RickMortyListData>());

    await Future<void>.delayed(const Duration(milliseconds: 100));

    // assert
    final asyncData = AsyncData<RickMortyListData>(rickMortyListData);
    verifyInOrder([
      () => listener(null, const AsyncLoading<RickMortyListData>()),
      () => listener(const AsyncLoading<RickMortyListData>(), asyncData),
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
    const parameter = (filter: null, page: 1);

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
    container.listen(
      characterListProvider(parameter),
      listener,
      fireImmediately: true,
    );

    // act
    final state = container.read(characterListProvider(parameter));

    // assert
    expect(state, const AsyncLoading<RickMortyListData>());
    await Future<void>.delayed(const Duration(milliseconds: 100));

    final capturedCalls = verify(
      () => listener(captureAny(), captureAny()),
    ).captured;

    expect(capturedCalls.length, 4);

    expect(capturedCalls[0], null);
    expect(capturedCalls[1], const AsyncLoading<RickMortyListData>());
    expect(capturedCalls[2], const AsyncLoading<RickMortyListData>());

    final lastState = capturedCalls[3] as AsyncValue<RickMortyListData>;
    expect(lastState.hasValue, false);

    lastState.when(
      data: (_) => fail('Should not be data'),
      loading: () => <dynamic, dynamic>{},
      error: (error, stack) => expect(error, isA<MockOperationException>()),
    );

    verify(mockListRepository.fetchListData);
  });
}
