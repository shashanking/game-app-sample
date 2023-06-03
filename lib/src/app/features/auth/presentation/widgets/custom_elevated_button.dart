import 'package:flutter/material.dart';
import 'package:game_app_sample/src/app/core/apply_gradient.dart';
import 'package:game_app_sample/src/config/theme.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    Key? key,
    required this.ktext,
    required this.kGradient,
    this.onPressed,
  }) : super(key: key);

  final String ktext;
  final Gradient kGradient;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ApplyGradient(
      gradient: kGradient,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          // make color or elevated button transparent
          backgroundColor: Colors.transparent,
          disabledBackgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
        onPressed: onPressed,
        child: Text(
          ktext,
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .copyWith(color: ThemeConfig.kBackgroundColor),
        ),
      ),
    );
  }
}
