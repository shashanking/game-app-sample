import 'package:flutter/material.dart';
import 'package:game_app_sample/src/app/features/auth/presentation/auth.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:game_app_sample/src/config/theme.dart';

class App extends StatelessWidget {
  App({Key? key}) : super(key: key);
  final ThemeConfig kTheme = ThemeConfig();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: kTheme.themeData,
      home: ResponsiveSizer(
        builder: (context, orientation, screenType) {
          return const LoginScreen();
        },
      ),
    );
  }
}
