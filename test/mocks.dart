import 'package:bloc_test/bloc_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:template/domain/github/bloc/github_repository_bloc.dart';
import 'package:template/domain/github/github_repository.dart';

class MockGithubRepository extends Mock implements GithubRepository {}

class MockGithubRepositoryBloc
    extends MockBloc<GithubRepositoryEvent, GithubRepositoryState>
    implements GithubRepositoryBloc {}
