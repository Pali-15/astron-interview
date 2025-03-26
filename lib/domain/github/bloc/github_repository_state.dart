part of 'github_repository_bloc.dart';

@freezed
class GithubRepositoryState with _$GithubRepositoryState {
  const factory GithubRepositoryState.initial() = GithubRepositoryInitialState;
  const factory GithubRepositoryState.loading() = GithubRepositoryLoadingState;
  const factory GithubRepositoryState.loaded({
    required List<Repository> searchResult,
    required int currentIndex,
    required int maxIndex,
    required String currentQuery,
  }) = GithubRepositoryLoadedState;
  const factory GithubRepositoryState.error({required String error}) =
      GithubRepositoryErrorState;
}
