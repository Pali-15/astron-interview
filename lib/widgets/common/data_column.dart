import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:template/extensions/context_extension.dart';
import 'package:template/utils/date_formatters.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlAppDataColumn extends StatelessWidget {
  final String title;
  final String? url;
  final int? maxLines;
  const UrlAppDataColumn({
    super.key,
    required this.title,
    required this.url,
    this.maxLines,
  });

  void _launchUrl(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => url == null ? null : _launchUrl(url!),
      child: AppDataColumn(
        title: title,
        label: url,
        maxLines: maxLines,
      ),
    );
  }
}

class AppDataColumn extends StatelessWidget {
  final String title;
  final String? label;
  final int? maxLines;
  const AppDataColumn({
    super.key,
    required this.title,
    required this.label,
    this.maxLines,
  });

  factory AppDataColumn.fromDate({
    required String title,
    int? maxLines,
    DateTime? date,
  }) {
    final dateString =
        date == null ? '-' : AppDateFormatters.ddMMyyyy.format(date);
    return AppDataColumn(title: title, label: dateString, maxLines: maxLines);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: context.textTheme.bodySmall,
        ),
        SizedBox(
          height: 5.h,
        ),
        Text(
          label ?? '-',
          style: context.textTheme.bodyMedium,
          maxLines: maxLines,
        ),
      ],
    );
  }
}
