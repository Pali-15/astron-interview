import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:template/domain/github/github_repository.dart';
import 'package:template/domain/github/models/model.dart';
import 'package:template/domain/utils/result.dart';

part 'github_repository_event.dart';
part 'github_repository_state.dart';
part 'github_repository_bloc.freezed.dart';

class GithubRepositoryBloc
    extends Bloc<GithubRepositoryEvent, GithubRepositoryState> {
  final GithubRepository _repository;
  GithubRepositoryBloc(this._repository)
      : super(GithubRepositoryInitialState()) {
    on<GithubRepositoryQueryEvent>((event, emit) async {
      emit(GithubRepositoryState.loading());
      final result = await _repository.searchRepositories(event.query);
      if (result is ResultData) {
        emit(
          GithubRepositoryState.loaded(
            searchResult: (result as ResultData).value,
          ),
        );
      } else {
        emit(
          GithubRepositoryState.error(error: (result as ResultError).message),
        );
      }
    });
  }
}
