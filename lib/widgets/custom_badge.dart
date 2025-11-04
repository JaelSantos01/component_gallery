import 'package:flutter/material.dart';

enum BadgeVariant { info, success, warning, error }

class CustomBadge extends StatelessWidget {
  final String text;
  final BadgeVariant variant;

  const CustomBadge({
    super.key,
    required this.text,
    this.variant = BadgeVariant.info,
  });

  @override
  Widget build(BuildContext context) {
    Color color;

    switch (variant) {
      case BadgeVariant.info:
        color = Colors.blue;
        break;
      case BadgeVariant.success:
        color = Colors.green;
        break;
      case BadgeVariant.warning:
        color = Colors.orange;
        break;
      case BadgeVariant.error:
        color = Colors.red;
        break;
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(text, style: const TextStyle(color: Colors.white)),
    );
  }
}
