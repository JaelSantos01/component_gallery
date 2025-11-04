import 'package:flutter/material.dart';

enum CardVariant { elevated, outlined, filled }

class CustomCard extends StatelessWidget {
  final Widget child;
  final CardVariant variant;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? padding;

  const CustomCard({
    super.key,
    required this.child,
    this.variant = CardVariant.elevated,
    this.width,
    this.height,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    BoxDecoration decoration;

    switch (variant) {
      case CardVariant.elevated:
        decoration = BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 6)],
        );
        break;
      case CardVariant.outlined:
        decoration = BoxDecoration(
          border: Border.all(color: Colors.grey, width: 1.5),
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
        );
        break;
      case CardVariant.filled:
        decoration = BoxDecoration(
          color: Colors.blue[50],
          borderRadius: BorderRadius.circular(12),
        );
        break;
    }

    return Container(
      width: width,
      height: height,
      padding: padding ?? const EdgeInsets.all(16),
      decoration: decoration,
      child: child,
    );
  }
}
