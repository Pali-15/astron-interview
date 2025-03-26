import 'package:flutter/material.dart';
import 'package:template/domain/github/models/model.dart';
import 'package:template/widgets/base_page.dart';

class RepositoryDetailsPage extends StatelessWidget {
  final Repository repository;
  const RepositoryDetailsPage({super.key, required this.repository});

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
