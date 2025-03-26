import 'package:flutter/material.dart';
import 'package:template/extensions/context_extension.dart';

class AppElevatedButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String label;
  final Color backgroundColor;

  const AppElevatedButton._({
    required this.label,
    this.onPressed,
    required this.backgroundColor,
  });

  factory AppElevatedButton.primary({
    Key? key,
    required String label,
    VoidCallback? onPressed,
    required BuildContext context,
  }) {
    return AppElevatedButton._(
      label: label,
      onPressed: onPressed,
      backgroundColor: context.colorScheme.inversePrimary,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        disabledBackgroundColor: backgroundColor,
      ),
      onPressed: onPressed,
      child: Text(
        label,
        style: context.textTheme.bodyMedium!
            .copyWith(color: context.colorScheme.primary),
      ),
    );
  }
}
