import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:template/domain/github/bloc/github_repository_bloc.dart';
import 'package:template/domain/github/models/model.dart';
import 'package:template/extensions/context_extension.dart';
import 'package:template/theme.dart';
import 'package:template/utils/app_dimensions.dart';
import 'package:template/utils/date_formatters.dart';
import 'package:template/widgets/base_page.dart';
import 'package:template/widgets/common/buttons.dart';
import 'package:template/widgets/common/data_table.dart';
import 'package:template/widgets/common/pagination_controller_widget.dart';
import 'package:template/widgets/error_widget.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final TextEditingController queryInputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BasePage(
      title: 'Search repository',
      children: BlocBuilder<GithubRepositoryBloc, GithubRepositoryState>(
        builder: (context, state) {
          return Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: queryInputController,
                      style: context.textTheme.bodySmall,
                      keyboardType: TextInputType.number,
                      cursorColor: context.colorScheme.inversePrimary,
                      decoration: InputDecoration(
                        hintText: 'Repository name',
                        hintStyle: context.textTheme.bodySmall,
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: context.colorScheme.inversePrimary,
                          ),
                          borderRadius: BorderRadius.all(AppDimensions.radiusM),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 18.w,
                  ),
                  AppElevatedButton.primary(
                    label: 'Search',
                    context: context,
                    onPressed: () {
                      FocusScope.of(context).unfocus();
                      context.read<GithubRepositoryBloc>().add(
                            GithubRepositoryEvent.query(
                              query: queryInputController.text,
                            ),
                          );
                    },
                  ),
                ],
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
                          ),
                        ),
                  ),
                ),
            ],
          );
        },
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
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: repositories.length,
            itemBuilder: (context, index) =>
                _SearchResultItem(repository: repositories[index]),
          ),
        ),
        PaginationControllerWidget(
          currentIndex: currentIndex,
          maxIndex: maxIndex,
          previousFunction: () =>
              () => context.read<GithubRepositoryBloc>().add(
                    GithubRepositoryEvent.getPageByIndex(
                      query: currentQuery,
                      nextIndex: currentIndex - 1,
                    ),
                  ),
          nextFunction: () => context.read<GithubRepositoryBloc>().add(
                GithubRepositoryEvent.getPageByIndex(
                  query: currentQuery,
                  nextIndex: currentIndex + 1,
                ),
              ),
        ),
      ],
    );
  }
}

class _SearchResultItem extends StatelessWidget {
  final Repository repository;
  const _SearchResultItem({required this.repository});

  @override
  Widget build(BuildContext context) {
    return Container(
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
          TableCellData(
            title: 'Updated at',
            label: repository.updatedAt == null
                ? '-'
                : AppDateFormatters.ddMMyyyy.format(repository.updatedAt!),
          ),
        ],
      ),
    );
  }
}
