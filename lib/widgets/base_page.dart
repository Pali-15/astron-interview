import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:template/extensions/context_extension.dart';

class BasePage extends StatelessWidget {
  final Widget children;
  final String? title;
  final bool enableBackButton;
  const BasePage({
    super.key,
    required this.children,
    this.title,
    this.enableBackButton = false,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: (!enableBackButton && title == null)
          ? null
          : AppBar(
              title: title == null
                  ? null
                  : Text(
                      title!,
                      style: context.textTheme.titleMedium,
                    ),
              leading: enableBackButton
                  ? IconButton(
                      onPressed: () => context.pop(),
                      icon: Icon(Icons.arrow_back),
                    )
                  : null,
            ),
      body: SafeArea(child: children),
    );
  }
}
