import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mocktail/mocktail.dart';
import 'package:rick_morty_app/features/detail/model/rick_morty_detail_model.dart';
import 'package:rick_morty_app/features/detail/presentation/notifier/rick_morty_detail_notifier.dart';
import 'package:rick_morty_app/features/detail/repository/rick_morty_detail_repository.dart';

import '../../../factory/helpers.dart';
import '../../../factory/mocks.dart';

void main() {
  setUpAll(() {
    registerFallbackValue(const AsyncLoading<RickMortyDetailResult>());
  });

  test('Initial test to build $RickMortyDetailResult', () async {
    // arrange
    const detailId = 1;

    final mockDetailRepository = MockDetailRepository();
    final container = setProviderContainer(
      overrides: [
        rickMortyDetailRepoProvider.overrideWithValue(mockDetailRepository),
      ],
    );

    final delayedResult = Future.delayed(const Duration(milliseconds: 100), () {
      return rickMortyDetailData;
    });

    when(
      () => mockDetailRepository.fetchDetailData(id: any(named: 'id')),
    ).thenAnswer((_) => delayedResult);

    final listener = Listener<AsyncValue<RickMortyDetailResult>>();
    container.listen(
      rickMortyDetailProvider(detailId),
      listener,
      fireImmediately: true,
    );

    // act
    final state = container.read(rickMortyDetailProvider(detailId));

    // assert
    expect(state, const AsyncLoading<RickMortyDetailResult>());
    await Future<void>.delayed(const Duration(milliseconds: 100));

    verifyInOrder([
      () => listener(null, const AsyncLoading<RickMortyDetailResult>()),
      () => listener(
        const AsyncLoading<RickMortyDetailResult>(),
        AsyncData<RickMortyDetailResult>(rickMortyDetailData),
      ),
    ]);

    verifyNoMoreInteractions(listener);
    verify(() => mockDetailRepository.fetchDetailData(id: any(named: 'id')));
  });

  test('Initial test to build $RickMortyDetailResult has $Exception', () async {
    // arrange
    const detailId = 1;
    final mockDetailRepository = MockDetailRepository();

    final queryException = MockOperationException();
    final delayedException = Future.delayed(
      const Duration(milliseconds: 100),
      () => throw queryException,
    );

    when(
      () => mockDetailRepository.fetchDetailData(id: any(named: 'id')),
    ).thenAnswer((_) => delayedException);

    final container = setProviderContainer(
      overrides: [
        rickMortyDetailRepoProvider.overrideWithValue(mockDetailRepository),
      ],
    );

    final listener = Listener<AsyncValue<RickMortyDetailResult>>();
    container.listen(
      rickMortyDetailProvider(detailId),
      listener,
      fireImmediately: true,
    );

    // act
    final state = container.read(rickMortyDetailProvider(detailId));

    // assert
    expect(state, const AsyncLoading<RickMortyDetailResult>());
    await Future<void>.delayed(const Duration(milliseconds: 100));

    final capturedCalls = verify(
      () => listener(captureAny(), captureAny()),
    ).captured;

    expect(capturedCalls.length, 4);

    expect(capturedCalls[0], null);
    expect(capturedCalls[1], const AsyncLoading<RickMortyDetailResult>());
    expect(capturedCalls[2], const AsyncLoading<RickMortyDetailResult>());

    final lastState = capturedCalls[3] as AsyncValue<RickMortyDetailResult>;
    expect(lastState.hasValue, false);

    lastState.when(
      data: (_) => fail('Should not be data'),
      loading: () => <dynamic, dynamic>{},
      error: (error, stack) => expect(error, isA<MockOperationException>()),
    );

    verify(
      () => mockDetailRepository.fetchDetailData(id: any(named: 'id')),
    ).called(1);
  });
}
