import 'package:flutter/material.dart';
import 'package:template/extensions/context_extension.dart';
import 'package:template/widgets/common/buttons.dart';

class PaginationControllerWidget extends StatelessWidget {
  final int currentIndex;
  final int maxIndex;
  final void Function() nextFunction;
  final void Function() previousFunction;
  const PaginationControllerWidget({
    super.key,
    required this.currentIndex,
    required this.maxIndex,
    required this.nextFunction,
    required this.previousFunction,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AppTextButton.transparent(
          label: currentIndex > 1 ? 'Previous' : '',
          onPressed: currentIndex > 1 ? previousFunction : null,
        ),
        Text(
          '$maxIndex / $currentIndex',
          style: context.textTheme.bodySmall,
        ),
        AppTextButton.transparent(
          label: currentIndex < maxIndex ? 'Next' : '',
          onPressed: currentIndex < maxIndex ? nextFunction : null,
        ),
      ],
    );
  }
}
