import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:template/domain/github/bloc/github_repository_bloc.dart';
import 'package:template/domain/github/models/model.dart';
import 'package:template/extensions/context_extension.dart';
import 'package:template/router/routes.dart';
import 'package:template/theme.dart';
import 'package:template/utils/app_dimensions.dart';
import 'package:template/widgets/base_page.dart';
import 'package:template/widgets/common/data_table.dart';
import 'package:template/widgets/common/pagination_controller_widget.dart';
import 'package:template/widgets/error_widget.dart';
import 'package:template/widgets/common/search_bar.dart' as searchBar;

class RepositoryListPage extends StatefulWidget {
  const RepositoryListPage({super.key});

  @override
  State<RepositoryListPage> createState() => _RepositoryListPageState();
}

class _RepositoryListPageState extends State<RepositoryListPage> {
  final TextEditingController queryInputController = TextEditingController();
  GithubRepositoryLoadedState? _lastLoadedState;

  @override
  void dispose() {
    queryInputController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BasePage(
      title: 'Repositories',
      children: BlocListener<GithubRepositoryBloc, GithubRepositoryState>(
        listener: (context, state) {
          if (state is GithubRepositoryLoadedState) {
            setState(() {
              _lastLoadedState = state;
            });
          }
        },
        child: BlocBuilder<GithubRepositoryBloc, GithubRepositoryState>(
          builder: (context, state) {
            return Column(
              children: [
                searchBar.SearchBar(
                  hint: 'Repository name',
                  queryInputController: queryInputController,
                  searchCallback: () {
                    setState(() {
                      _lastLoadedState = null;
                    });
                    FocusScope.of(context).unfocus();
                    context.read<GithubRepositoryBloc>().add(
                          GithubRepositoryEvent.query(
                            query: queryInputController.text,
                            nextIndex: 1,
                          ),
                        );
                  },
                ),
                if (state is GithubRepositoryLoadingState) ...[
                  Spacer(),
                  CircularProgressIndicator(
                    color: AppColors.blue,
                  ),
                  Spacer(),
                ],
                if (state is GithubRepositoryLoadedState)
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(top: 20.h),
                      child: _SearchResultContainer(
                        currentIndex: state.currentIndex,
                        maxIndex: state.maxIndex,
                        repositories: state.searchResult,
                        currentQuery: state.currentQuery,
                      ),
                    ),
                  ),
                if (state is GithubRepositoryErrorState)
                  Expanded(
                    child: AppErrorWidget(
                      retry: () => context.read<GithubRepositoryBloc>().add(
                            GithubRepositoryEvent.query(
                              query: queryInputController.text,
                              nextIndex: 1,
                            ),
                          ),
                    ),
                  ),
                if (state is! GithubRepositoryErrorState &&
                    _lastLoadedState != null) ...[
                  PaginationControllerWidget(
                    currentIndex: _lastLoadedState!.currentIndex,
                    maxIndex: _lastLoadedState!.maxIndex,
                    previousFunction: () =>
                        context.read<GithubRepositoryBloc>().add(
                              GithubRepositoryEvent.query(
                                query: _lastLoadedState!.currentQuery,
                                nextIndex: _lastLoadedState!.currentIndex - 1,
                              ),
                            ),
                    nextFunction: () =>
                        context.read<GithubRepositoryBloc>().add(
                              GithubRepositoryEvent.query(
                                query: _lastLoadedState!.currentQuery,
                                nextIndex: _lastLoadedState!.currentIndex + 1,
                              ),
                            ),
                  ),
                ],
              ],
            );
          },
        ),
      ),
    );
  }
}

class _SearchResultContainer extends StatelessWidget {
  final List<Repository> repositories;
  final int currentIndex;
  final int maxIndex;
  final String currentQuery;
  const _SearchResultContainer({
    required this.repositories,
    required this.currentIndex,
    required this.maxIndex,
    required this.currentQuery,
  });

  @override
  Widget build(BuildContext context) {
    if (repositories.isEmpty) {
      return Text(
        'No result',
        style: context.textTheme.bodyLarge,
      );
    }
    return ListView.builder(
      itemCount: repositories.length,
      itemBuilder: (context, index) => _SearchResultItem(
        repository: repositories[index],
        key: ObjectKey(repositories[index]),
      ),
    );
  }
}

class _SearchResultItem extends StatelessWidget {
  final Repository repository;
  const _SearchResultItem({super.key, required this.repository});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>
          context.goNamed(AppRoutes.repositoryDetails, extra: repository),
      child: Container(
        margin: EdgeInsets.only(top: 10.h),
        padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 8.w),
        decoration: BoxDecoration(
          color: context.colorScheme.primaryContainer,
          borderRadius: BorderRadius.all(AppDimensions.radiusL),
        ),
        child: AppTableRow(
          columnWidths: const {
            0: FlexColumnWidth(1),
            1: FlexColumnWidth(2),
            2: FlexColumnWidth(1),
          },
          cells: [
            TableCellData(title: 'Name', label: repository.name),
            TableCellData(
              title: 'Description',
              label: repository.description ?? '-',
            ),
            TableCellData.fromDate(
              title: 'Updated at',
              date: repository.updatedAt,
            ),
          ],
        ),
      ),
    );
  }
}
