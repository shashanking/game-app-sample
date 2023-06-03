import 'package:flutter/material.dart';
import 'package:game_app_sample/src/app/features/home/presentation/home.dart';
import 'package:game_app_sample/src/config/theme.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../widgets/custom_elevated_button.dart';
import '../widgets/custom_input_field.dart';

class LoginCard extends StatelessWidget {
  LoginCard({
    super.key,
  });
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(ThemeConfig.kDefaultPadding),
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Login',
              style: Theme.of(context).textTheme.displaySmall,
            ),
            SizedBox(height: 20.sp),
            const CustomInputField(
              kHint: 'Mobile Number',
              kIcon: 'call',
              keyboardType: TextInputType.number,
              validator: isEmailValid,
            ),
            SizedBox(height: 20.sp),
            const CustomInputField(
              kHint: 'Password',
              kIcon: 'lock',
              validator: isPasswordValid,
            ),
            SizedBox(height: 10.sp),
            Text(
              'Forgot password?',
              textAlign: TextAlign.end,
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(color: ThemeConfig.kPrimaryColor),
            ),
            SizedBox(height: 20.sp),
            CustomElevatedButton(
              ktext: 'Login',
              kGradient: ThemeConfig.kPrimaryGradient,
              onPressed: () {
                if (_formKey.currentState?.validate() ?? false) {
                  // TODO: login function here
                  Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => const HomeScreen(),
                    ),
                  );
                }
              },
            ),
            SizedBox(height: 16.sp),
            CustomElevatedButton(
              ktext: 'Login with OTP',
              kGradient: ThemeConfig.kSecondaryGradient,
              onPressed: () {
                if (_formKey.currentState?.validate() ?? false) {
                  // TODO: login with OTP function here
                  Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => const HomeScreen(),
                    ),
                  );
                }
              },
            ),
            SizedBox(height: 20.sp),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  "Don't have an account? ",
                  style: Theme.of(context).textTheme.bodySmall,
                  textAlign: TextAlign.center,
                ),
                GestureDetector(
                  onTap: () {
                    // Handle sign-up button press
                  },
                  child: Text(
                    'Sign up now',
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall!
                        .copyWith(color: ThemeConfig.kPrimaryColor),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

String? isPasswordValid(String? value) {
  final RegExp regex = RegExp(r'^.{6,}$');

  if (value == null || value.isEmpty) {
    return 'Please Enter Password';
  } else if (!regex.hasMatch(value)) {
    return ("Enter Valid Password(Min. 6 Character)");
  }
  return null;
}

String? isEmailValid(String? value) {
  if (value == null || value.isEmpty) {
    return 'Please Enter Email';
  } else if (!RegExp(
              r'^\+?\d{1,3}[-.\s]?\(?\d{1,3}\)?[-.\s]?\d{1,4}[-.\s]?\d{1,4}[-.\s]?\d{1,9}$')
          .hasMatch(value) ||
      (value.length != 10)) {
    return ("Please Enter a valid Mobile Number");
  }
  return null;
}
