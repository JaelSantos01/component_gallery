import 'package:flutter/material.dart';

enum ProgressVariant { linear, circular, custom }

class CustomProgress extends StatelessWidget {
  final double? value;
  final ProgressVariant variant;
  final Color? color;
  final Color? backgroundColor;

  const CustomProgress({
    super.key,
    this.value,
    this.variant = ProgressVariant.linear,
    this.color,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    switch (variant) {
      case ProgressVariant.linear:
        return LinearProgressIndicator(
          value: value,
          color: color ?? Colors.blue,
          backgroundColor: backgroundColor ?? Colors.grey[300],
        );
      case ProgressVariant.circular:
        return CircularProgressIndicator(
          value: value,
          color: color ?? Colors.blue,
          backgroundColor: backgroundColor ?? Colors.grey[300],
        );
      case ProgressVariant.custom:
        return Container(
          height: 10,
          width: 200,
          decoration: BoxDecoration(
            color: backgroundColor ?? Colors.grey[300],
            borderRadius: BorderRadius.circular(10),
          ),
          child: FractionallySizedBox(
            alignment: Alignment.centerLeft,
            widthFactor: value ?? 0.5,
            child: Container(
              decoration: BoxDecoration(
                color: color ?? Colors.green,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        );
    }
  }
}
