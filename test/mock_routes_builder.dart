import 'package:template/domain/github/bloc/github_repository_bloc.dart';
import 'package:template/router/router.dart';

import 'mocks.dart';

RoutesBuilder buildRoutesBuilder({
  GithubRepositoryBloc? githubRepositoryBloc,
}) {
  return RoutesBuilder(
    githubRepositoryBloc: githubRepositoryBloc ?? MockGithubRepositoryBloc(),
  );
}
