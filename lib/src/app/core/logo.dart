import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({
    Key? key,
    required this.logo,
  }) : super(key: key);
  final String logo;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        'assets/logo/$logo.png',
      ),
    );
  }
}
