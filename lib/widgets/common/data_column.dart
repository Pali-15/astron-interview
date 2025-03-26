import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:template/extensions/context_extension.dart';

class AppDataColumn extends StatelessWidget {
  final String title;
  final String label;
  const AppDataColumn({super.key, required this.title, required this.label});

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
          label,
          style: context.textTheme.bodyMedium,
        ),
      ],
    );
  }
}
