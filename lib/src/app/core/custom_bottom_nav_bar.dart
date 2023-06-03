import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      notchMargin: 5.0,
      child: SizedBox(
        height: 70.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            CustomButtomIcon(
              icon: 'contact',
              text: 'Contact',
            ),
            CustomButtomIcon(
              icon: 'wallet',
              text: 'Wallet',
            ),
            // Placeholder for the center FAB
            SizedBox(width: 56.0),
            CustomButtomIcon(
              icon: 'share',
              text: 'Share',
            ),
            CustomButtomIcon(
              icon: 'profile',
              text: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}

class CustomButtomIcon extends StatelessWidget {
  const CustomButtomIcon({
    super.key,
    required this.icon,
    required this.text,
    this.onTap,
  });
  final String icon;
  final String text;
  final void Function()? onTap;
  final _color = const Color(0xFFCCCCCC);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset('assets/icons/$icon.png'),
          Text(
            text,
            style:
                Theme.of(context).textTheme.bodySmall!.copyWith(color: _color),
          ),
        ],
      ),
    );
  }
}
