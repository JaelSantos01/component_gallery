import 'package:flutter/material.dart';

enum InputVariant { standard, outlined, filled }

class CustomInput extends StatelessWidget {
  final String hintText;
  final InputVariant variant;
  final IconData? prefixIcon;
  final bool obscureText;
  final TextEditingController? controller;

  const CustomInput({
    super.key,
    required this.hintText,
    this.variant = InputVariant.standard,
    this.prefixIcon,
    this.obscureText = false,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    InputBorder border;

    switch (variant) {
      case InputVariant.standard:
        border = const UnderlineInputBorder();
        break;
      case InputVariant.outlined:
        border = OutlineInputBorder(borderRadius: BorderRadius.circular(8));
        break;
      case InputVariant.filled:
        border = OutlineInputBorder(borderRadius: BorderRadius.circular(8));
        break;
    }

    return TextField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
        border: border,
        filled: variant == InputVariant.filled,
        fillColor: variant == InputVariant.filled ? Colors.grey[200] : null,
      ),
    );
  }
}
