import 'package:template/domain/clients/github_client.dart';
import 'package:template/domain/di/di_module.dart';
import 'package:template/domain/github/bloc/github_repository_bloc.dart';
import 'package:template/domain/github/github_repository.dart';

class GithubDiModule extends DiModule {
  @override
  void initializeModule(GetIt getIt) {
    getIt
      ..registerSingleton(GithubClient())
      ..registerSingleton(GithubRepository(getIt.get<GithubClient>()))
      ..registerSingleton(GithubRepositoryBloc(getIt.get<GithubRepository>()));
  }
}
