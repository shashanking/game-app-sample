import 'package:flutter/material.dart';
import 'package:game_app_sample/src/config/theme.dart';

class CustomInputField extends StatelessWidget {
  const CustomInputField({
    Key? key,
    required this.kHint,
    required this.kIcon,
    this.kController,
    this.validator,
    this.keyboardType,
  }) : super(key: key);

  final String kHint;
  final String kIcon;
  final TextEditingController? kController;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ThemeConfig.kBackgroundColor,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: TextFormField(
        keyboardType: keyboardType,
        obscureText: (kHint.trim() == 'Password'),
        decoration: InputDecoration(
          prefixIcon: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: ThemeConfig.kDefaultPadding / 2),
            child: Image.asset('assets/icons/$kIcon.png'),
          ),
          prefixIconColor: ThemeConfig.kGreyTextColor,
          // Using Hints Instead of labels
          hintText: kHint,
          hintStyle: Theme.of(context).textTheme.labelLarge!.copyWith(
                color: ThemeConfig.kGreyTextColor,
              ),
          border: InputBorder.none,
        ),
        controller: kController,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: validator,
      ),
    );
  }
}
