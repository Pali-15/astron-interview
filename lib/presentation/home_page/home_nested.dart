import 'package:flutter/material.dart';
import 'package:template/widgets/base_page.dart';

class HomeNested extends StatelessWidget {
  const HomeNested({super.key});

  @override
  Widget build(BuildContext context) {
    return BasePage(
      enableBackButton: true,
      children: Center(
        child: Text("This is a nested route"),
      ),
    );
  }
}
