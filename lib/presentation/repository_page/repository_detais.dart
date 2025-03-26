import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:template/assets_gen/assets.gen.dart';
import 'package:template/domain/github/models/model.dart';
import 'package:template/extensions/context_extension.dart';
import 'package:template/widgets/base_page.dart';
import 'package:template/widgets/common/data_column.dart';

class RepositoryDetailsPage extends StatelessWidget {
  final Repository repository;
  const RepositoryDetailsPage({super.key, required this.repository});

  @override
  Widget build(BuildContext context) {
    return BasePage(
      enableBackButton: true,
      children: SingleChildScrollView(
        child: Column(
          spacing: 16.h,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _HeaderSection(
              owner: repository.owner,
            ),
            Divider(),
            Text(
              'Details',
              style: context.textTheme.titleMedium,
            ),
            AppDataColumn(title: 'Name', label: repository.name),
            AppDataColumn(title: 'Description', label: repository.description),
            UrlAppDataColumn(title: 'Link', url: repository.htmlUrl),
            AppDataColumn(
              title: 'Forks',
              label: repository.forksCount?.toString(),
            ),
            AppDataColumn.fromDate(
              title: 'Created',
              date: repository.createdAt,
            ),
            AppDataColumn.fromDate(
              title: 'Updated',
              date: repository.updatedAt,
            ),
          ],
        ),
      ),
    );
  }
}

class _HeaderSection extends StatelessWidget {
  final Owner? owner;
  const _HeaderSection({required this.owner});

  @override
  Widget build(BuildContext context) {
    if (owner == null) {
      return Text(
        'Owner not found',
        style: context.textTheme.bodyMedium,
      );
    }
    final repoOwner = owner!;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (repoOwner.avatarUrl == null)
          Assets.images.avatarPlaceholder.svg(height: 100.h, width: 100.w),
        if (repoOwner.avatarUrl != null)
          ClipOval(
            child: CachedNetworkImage(
              imageUrl: repoOwner.avatarUrl!,
              width: 100.w,
              height: 100.h,
              fit: BoxFit.cover,
              placeholder: (context, url) => Assets.images.avatarPlaceholder
                  .svg(height: 100.h, width: 100.w),
              errorWidget: (context, url, error) => Assets
                  .images.avatarPlaceholder
                  .svg(height: 100.h, width: 100.w),
            ),
          ),
        SizedBox(
          width: 15.w,
        ),
        Expanded(
          child: SizedBox(
            height: 100.h,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppDataColumn(
                  maxLines: 1,
                  title: 'Name',
                  label: repoOwner.login,
                ),
                UrlAppDataColumn(
                  maxLines: 1,
                  title: 'Link',
                  url: repoOwner.htmlUrl,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
