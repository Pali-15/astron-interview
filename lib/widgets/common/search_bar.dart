import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:template/extensions/context_extension.dart';
import 'package:template/utils/app_dimensions.dart';
import 'package:template/widgets/common/buttons.dart';

class SearchBar extends StatelessWidget {
  final TextEditingController queryInputController;
  final void Function()? searchCallback;
  final String hint;
  const SearchBar({
    super.key,
    required this.queryInputController,
    required this.searchCallback,
    required this.hint,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            controller: queryInputController,
            style: context.textTheme.bodySmall,
            keyboardType: TextInputType.number,
            cursorColor: context.colorScheme.inversePrimary,
            decoration: InputDecoration(
              hintText: hint,
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
          onPressed: searchCallback,
        ),
      ],
    );
  }
}
