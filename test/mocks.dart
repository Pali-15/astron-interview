import 'package:bloc_test/bloc_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:template/domain/clients/github_client.dart';
import 'package:template/domain/github/bloc/github_repository_bloc.dart';
import 'package:template/domain/github/github_repository.dart';

class MockGithubRepository extends Mock implements GithubRepository {}

class MockGithubClient extends Mock implements GithubClient {}

class MockGithubRepositoryBloc
    extends MockBloc<GithubRepositoryEvent, GithubRepositoryState>
    implements GithubRepositoryBloc {}
