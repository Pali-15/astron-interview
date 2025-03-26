import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:template/theme.dart';
import 'package:template/widgets/base_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BasePage(
      title: 'Profile',
      children: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ValueListenableBuilder(
              valueListenable: ThemeSwitcher.lightThemeNotifier,
              builder: (context, value, child) => Switch(
                value: value,
                onChanged: (_) => ThemeSwitcher.switchTheme(),
              ),
            ),
            SizedBox(height: 5.h),
            Text(
              'Switch to ${Theme.of(context).brightness == Brightness.dark ? "Light" : "Dark"} Theme',
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
      ),
    );
  }
}
