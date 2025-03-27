part of 'github_repository_bloc.dart';

@freezed
class GithubRepositoryEvent with _$GithubRepositoryEvent {
  const factory GithubRepositoryEvent.query({
    required String query,
    required int nextIndex,
  }) = GithubRepositoryQueryEvent;
}
