import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:template/extensions/context_extension.dart';
import 'package:template/theme.dart';

class BottomNavbar extends StatelessWidget {
  final StatefulNavigationShell navigationShell;
  const BottomNavbar({required this.navigationShell, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: navigationShell,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.data_saver_off_outlined), label: 'Repositories'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        currentIndex: navigationShell.currentIndex,
        onTap: (newIndex) {
          if (navigationShell.currentIndex != newIndex) {
            navigationShell.goBranch(newIndex);
          }
        },
        selectedItemColor: AppColors.blue,
        selectedLabelStyle:
            context.textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold),
        unselectedLabelStyle: context.textTheme.bodyMedium,
      ),
    );
  }
}
