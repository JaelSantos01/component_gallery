import 'package:flutter/material.dart';

enum ChipVariant { defaultChip, outlined, colored }

class CustomChip extends StatelessWidget {
  final String label;
  final ChipVariant variant;
  final bool selected;
  final VoidCallback? onDeleted;

  const CustomChip({
    super.key,
    required this.label,
    this.variant = ChipVariant.defaultChip,
    this.selected = false,
    this.onDeleted,
  });

  @override
  Widget build(BuildContext context) {
    Color background;
    Color borderColor;

    switch (variant) {
      case ChipVariant.defaultChip:
        background = selected ? Colors.blue : Colors.grey[200]!;
        borderColor = Colors.transparent;
        break;
      case ChipVariant.outlined:
        background = Colors.transparent;
        borderColor = Colors.blue;
        break;
      case ChipVariant.colored:
        background = Colors.purpleAccent;
        borderColor = Colors.transparent;
        break;
    }

    return Chip(
      label: Text(
        label,
        style: TextStyle(
          color: selected ? Colors.white : Colors.black,
        ),
      ),
      backgroundColor: background,
      shape: StadiumBorder(side: BorderSide(color: borderColor)),
      deleteIcon: onDeleted != null ? const Icon(Icons.close) : null,
      onDeleted: onDeleted,
    );
  }
}
