import 'package:flutter/material.dart';

enum ButtonVariant { primary, secondary, outlined }

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final ButtonVariant variant;
  final double? width;
  final double height;

  const CustomButton({
    super.key,
    required this.text,
    this.onPressed,
    this.variant = ButtonVariant.primary,
    this.width,
    this.height = 50,
  });

  @override
  Widget build(BuildContext context) {
    Color background;
    Color textColor;
    BorderSide border;

    switch (variant) {
      case ButtonVariant.primary:
        background = Colors.blue;
        textColor = Colors.white;
        border = BorderSide.none;
        break;
      case ButtonVariant.secondary:
        background = Colors.grey[200]!;
        textColor = Colors.black;
        border = BorderSide.none;
        break;
      case ButtonVariant.outlined:
        background = Colors.transparent;
        textColor = Colors.blue;
        border = const BorderSide(color: Colors.blue, width: 2);
        break;
    }

    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: background,
          foregroundColor: textColor,
          side: border,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          elevation: variant == ButtonVariant.outlined ? 0 : 4,
        ),
        onPressed: onPressed,
        child: Text(text),
      ),
    );
  }
}
