import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mocktail/mocktail.dart';
import 'package:rick_morty_app/features/detail/model/rick_morty_detail_model.dart';
import 'package:rick_morty_app/features/detail/presentation/notifier/rick_morty_detail_notifier.dart';
import 'package:rick_morty_app/features/detail/repository/rick_morty_detail_repository.dart';

import '../../../factory/helpers.dart';
import '../../../factory/mocks.dart';

void main() {
  test('Initial test to build $RickMortyDetailResult', () async {
    // arrange
    const detailId = 1;

    final mockDetailRepository = MockDetailRepository();
    final container = setProviderContainer(
      overrides: [
        rickMortyDetailRepoProvider.overrideWithValue(
          mockDetailRepository,
        ),
      ],
    );

    final listener = Listener<AsyncValue<RickMortyDetailResult>>();
    when(() => mockDetailRepository.fetchDetailData(id: any(named: 'id')))
        .thenAnswer((_) async => rickMortyDetailData);

    final notifier = container.read(rickMortyDetailProvider(detailId).notifier);

    // act
    container.listen(
      rickMortyDetailProvider(detailId),
      listener,
      fireImmediately: true,
    );

    await notifier.build(detailId);

    // assert
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
}
