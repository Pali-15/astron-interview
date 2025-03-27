import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:template/domain/github/bloc/github_repository_bloc.dart';
import 'package:template/domain/github/models/model.dart';
import 'package:template/domain/utils/result.dart';

import '../mocks.dart';

void main() {
  late GithubRepositoryBloc bloc;
  late MockGithubRepository repository;

  setUp(() {
    repository = MockGithubRepository();
    bloc = GithubRepositoryBloc(repository);
  });

  const query = 'flutter';
  final testRepo = Repository(
    name: 'flutter',
    fullName: 'flutter/flutter',
    description: 'Awesome Flutter repo',
    htmlUrl: 'https://github.com/flutter/flutter',
    createdAt: DateTime.parse('2018-01-01T00:00:00Z'),
    updatedAt: DateTime.parse('2024-01-01T00:00:00Z'),
    forksCount: 100,
    owner: Owner(
      login: 'flutter',
      avatarUrl: 'https://avatar.url',
      htmlUrl: 'https://github.com/flutter',
    ),
  );

  final result = RepositoryQueryResult(
    items: [testRepo],
    maxIndex: 5,
  );

  blocTest<GithubRepositoryBloc, GithubRepositoryState>(
    'emits [loading, loaded] when query succeeds',
    build: () {
      when(() => repository.searchRepositories(query, page: 1))
          .thenAnswer((_) async => ResultData(result));
      return bloc;
    },
    act: (bloc) =>
        bloc.add(GithubRepositoryEvent.query(query: query, nextIndex: 1)),
    expect: () => [
      GithubRepositoryState.loading(),
      GithubRepositoryState.loaded(
        searchResult: result.items,
        currentIndex: 1,
        maxIndex: 5,
        currentQuery: query,
      ),
    ],
  );

  blocTest<GithubRepositoryBloc, GithubRepositoryState>(
    'emits [loading, error] when query fails',
    build: () {
      when(() => repository.searchRepositories(query, page: 1))
          .thenAnswer((_) async => ResultError('Network Error'));
      return bloc;
    },
    act: (bloc) =>
        bloc.add(GithubRepositoryEvent.query(query: query, nextIndex: 1)),
    expect: () => [
      GithubRepositoryState.loading(),
      GithubRepositoryState.error(error: 'Network Error'),
    ],
  );
}
