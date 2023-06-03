import 'package:flutter/material.dart';
import 'package:game_app_sample/src/config/theme.dart';

import 'apply_gradient.dart';

class CustomFAB extends StatelessWidget {
  const CustomFAB({super.key});

  @override
  Widget build(BuildContext context) {
    return ApplyGradient(
      gradient: ThemeConfig.kSecondaryGradient,
      shape: BoxShape.circle,
      child: FloatingActionButton(
        backgroundColor: Colors.transparent,
        onPressed: () {
          // Handle FAB button press
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
