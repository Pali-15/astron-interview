import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:template/router/routes.dart';
import 'package:template/widgets/base_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BasePage(
      children: Center(
        child: ElevatedButton(
          onPressed: () {
            context.pushNamed(
              AppRoutes.homeNested,
            );
          },
          child: Text(
            "Go to nested root",
          ),
        ),
      ),
    );
  }
}
