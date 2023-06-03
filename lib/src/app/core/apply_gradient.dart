import 'package:flutter/material.dart';

class ApplyGradient extends StatelessWidget {
  const ApplyGradient({
    Key? key,
    required this.gradient,
    required this.child,
    this.shape = BoxShape.rectangle,
    this.kBorderRadius = 20,
  }) : super(key: key);
  final Gradient gradient;
  final Widget child;
  final BoxShape shape;
  final double kBorderRadius;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
        decoration: BoxDecoration(
          shape: shape,
          gradient: gradient,
          borderRadius: (shape == BoxShape.circle)
              ? null
              : BorderRadius.circular(kBorderRadius),
        ),
        child: child);
  }
}
