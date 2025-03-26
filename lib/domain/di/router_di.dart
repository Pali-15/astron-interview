import 'package:template/domain/di/di_module.dart';
import 'package:template/domain/github/bloc/github_repository_bloc.dart';
import 'package:template/router/router.dart';

class RouterDiModule extends DiModule {
  @override
  void initializeModule(GetIt getIt) {
    getIt
      ..registerSingleton(
        RoutesBuilder(githubRepositoryBloc: getIt.get<GithubRepositoryBloc>()),
      )
      ..registerSingleton(
        AppRouter(getIt.get<RoutesBuilder>()),
      );
  }
}
