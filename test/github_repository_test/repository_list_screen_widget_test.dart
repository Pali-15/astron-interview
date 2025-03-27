import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:template/domain/github/bloc/github_repository_bloc.dart';
import 'package:template/domain/github/models/model.dart';
import 'package:template/router/router.dart';
import 'package:template/widgets/common/pagination_controller_widget.dart';
import 'package:template/widgets/error_widget.dart';

import '../mock_routes_builder.dart';
import '../mocks.dart';
import '../test_extensions.dart';

void main() {
  late final GithubRepositoryBloc mockGithubRepositoryBloc;
  late final RoutesBuilder routesBuilder;
  late final AppRouter appRouter;

  setUpAll(() {
    mockGithubRepositoryBloc = MockGithubRepositoryBloc();
    routesBuilder =
        buildRoutesBuilder(githubRepositoryBloc: mockGithubRepositoryBloc);
    appRouter = AppRouter(routesBuilder);
  });

  group('Test conditional displays', () {
    testWidgets(
      'Test error screen',
      (tester) async {
        when(
          () => mockGithubRepositoryBloc.state,
        ).thenReturn(GithubRepositoryState.error(error: 'error'));

        await tester.pumpAppRoute(appRouter);

        expect(find.byType(AppErrorWidget), findsOneWidget);
      },
    );

    testWidgets(
      'Test empty loaded screen',
      (tester) async {
        when(
          () => mockGithubRepositoryBloc.state,
        ).thenReturn(
          GithubRepositoryState.loaded(
            searchResult: [],
            currentIndex: 1,
            maxIndex: 1,
            currentQuery: 'query,',
          ),
        );

        await tester.pumpAppRoute(appRouter);

        expect(find.text('No result'), findsOneWidget);
      },
    );

    testWidgets(
      'Test loaded screen',
      (tester) async {
        final repository = Repository(
          name: 'name',
          fullName: 'fullName',
          description: 'description',
          htmlUrl: 'htmlUrl',
          createdAt: DateTime.now(),
          updatedAt: DateTime.now(),
          forksCount: 1,
          owner:
              Owner(login: 'login', avatarUrl: 'avatarUrl', htmlUrl: 'htmlUrl'),
        );
        when(
          () => mockGithubRepositoryBloc.state,
        ).thenReturn(
          GithubRepositoryState.loaded(
            searchResult: [repository],
            currentIndex: 1,
            maxIndex: 1,
            currentQuery: 'query,',
          ),
        );

        await tester.pumpAppRoute(appRouter);

        expect(find.byKey(ObjectKey(repository)), findsOneWidget);
      },
    );
  });

  group('Test display of Paginationcontroller', () {
    testWidgets(
      'Display when not error state',
      (tester) async {
        final repository = Repository(
          name: 'name',
          fullName: 'fullName',
          description: 'description',
          htmlUrl: 'htmlUrl',
          createdAt: DateTime.now(),
          updatedAt: DateTime.now(),
          forksCount: 1,
          owner:
              Owner(login: 'login', avatarUrl: 'avatarUrl', htmlUrl: 'htmlUrl'),
        );
        whenListen(
          mockGithubRepositoryBloc,
          Stream.fromIterable(
            [
              GithubRepositoryState.loaded(
                searchResult: [repository],
                currentIndex: 1,
                maxIndex: 1,
                currentQuery: 'query,',
              ),
            ],
          ),
        );
        when(
          () => mockGithubRepositoryBloc.state,
        ).thenReturn(
          GithubRepositoryState.loaded(
            searchResult: [repository],
            currentIndex: 1,
            maxIndex: 1,
            currentQuery: 'query,',
          ),
        );

        await tester.pumpAppRoute(appRouter);

        expect(find.byType(PaginationControllerWidget), findsOneWidget);
      },
    );
    testWidgets(
      'Hide when error state',
      (tester) async {
        when(
          () => mockGithubRepositoryBloc.state,
        ).thenReturn(
          GithubRepositoryState.error(
            error: 'error',
          ),
        );

        await tester.pumpAppRoute(appRouter);

        expect(find.byType(PaginationControllerWidget), findsNothing);
      },
    );
  });
}
