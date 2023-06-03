import 'package:flutter/material.dart';
import 'package:game_app_sample/src/app/core/custom_appbar.dart';
import 'package:game_app_sample/src/app/core/custom_bottom_nav_bar.dart';
import 'package:game_app_sample/src/app/core/custom_floating_action_button.dart';
import 'package:game_app_sample/src/config/theme.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../widgets/top_banner_widget.dart';
import 'games_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  final List<String> gamesList = const [
    'Play Ludo and Earn Money',
    'Play Cricket Fantasy League'
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const CustomAppBar(),
        body: Padding(
          padding: const EdgeInsets.all(ThemeConfig.kDefaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Hello, Dipak 👋',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.sp),
              const TopBannerWidget(),
              GamesList(gamesList: gamesList),
            ],
          ),
        ),
        floatingActionButton: const CustomFAB(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: const CustomBottomNavBar(),
      ),
    );
  }
}
