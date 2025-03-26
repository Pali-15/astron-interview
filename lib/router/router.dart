import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:template/domain/github/bloc/github_repository_bloc.dart';
import 'package:template/domain/github/models/model.dart';
import 'package:template/presentation/repository_page/repository_list_screen.dart';
import 'package:template/presentation/repository_page/repository_detais.dart';
import 'package:template/presentation/profile_page/profile.dart';
import 'package:template/router/route_wrapper.dart';
import 'package:template/router/routes.dart';
import 'package:template/widgets/bottom_navbar.dart';

class AppRouter {
  final _rootNavigatorKey = GlobalKey<NavigatorState>();

  late final RoutesBuilder _builder;
  late final GoRouter _router;

  GoRouter get router => _router;

  AppRouter(RoutesBuilder builder) {
    _builder = builder;
    _router = GoRouter(
      initialLocation: AppRoutes.repositories,
      navigatorKey: _rootNavigatorKey,
      debugLogDiagnostics: true,
      routes: <RouteBase>[
        StatefulShellRoute.indexedStack(
          builder: (context, state, navigationShell) => BottomNavbar(
            navigationShell: navigationShell,
          ),
          branches: <StatefulShellBranch>[
            StatefulShellBranch(
              routes: [
                GoRoute(
                  path: AppRoutes.repositories,
                  name: AppRoutes.repositories,
                  builder: _builder.repositoryListPageBuilder,
                  routes: [
                    GoRoute(
                      path: AppRoutes.repositoryDetails,
                      name: AppRoutes.repositoryDetails,
                      builder: _builder.repositoryDetailsPageBuilder,
                    ),
                  ],
                ),
              ],
            ),
            StatefulShellBranch(
              routes: [
                GoRoute(
                  path: AppRoutes.profile,
                  name: AppRoutes.profile,
                  builder: _builder.profilePageBuilder,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class RoutesBuilder {
  final GithubRepositoryBloc githubRepositoryBloc;

  RoutesBuilder({
    required this.githubRepositoryBloc,
  });

  Widget repositoryListPageBuilder(BuildContext context, GoRouterState state) {
    return RouteWrapper(
      child: BlocProvider<GithubRepositoryBloc>.value(
        value: githubRepositoryBloc,
        child: RepositoryListPage(),
      ),
    );
  }

  Widget repositoryDetailsPageBuilder(
    BuildContext context,
    GoRouterState state,
  ) {
    final repository = state.extra as Repository;

    return RouteWrapper(
      child: RepositoryDetailsPage(
        repository: repository,
      ),
    );
  }

  Widget profilePageBuilder(BuildContext context, GoRouterState state) {
    return RouteWrapper(child: ProfilePage());
  }
}
