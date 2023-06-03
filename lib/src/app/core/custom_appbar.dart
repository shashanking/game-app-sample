import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'logo.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  final double kPreferredHeight = 90;

  @override
  Size get preferredSize => Size.fromHeight(kPreferredHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: kPreferredHeight,
      backgroundColor: Colors.black,
      centerTitle: true,
      leading: const Logo(
        logo: 'logo_circular',
      ),
      leadingWidth: 20.w,
      actions: [
        IconButton(
          onPressed: () {},
          icon: Image.asset('assets/icons/bell.png'),
        )
      ],
    );
  }
}
