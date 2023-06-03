import 'package:flutter/material.dart';
import 'package:game_app_sample/src/app/core/logo.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'login_card.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      extendBody: true,
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            height: 100.h,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Expanded(
                  flex: 4,
                  child: Logo(
                    logo: 'logo.2x',
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: Card(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                      ),
                    ),
                    elevation: 0,
                    child: LoginCard(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
