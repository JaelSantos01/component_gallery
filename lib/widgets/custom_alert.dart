import 'package:flutter/material.dart';

enum AlertVariant { info, success, warning, error }

class CustomAlert extends StatelessWidget {
  final String message;
  final AlertVariant variant;
  final IconData? icon;
  final VoidCallback? onClose;

  const CustomAlert({
    super.key,
    required this.message,
    this.variant = AlertVariant.info,
    this.icon,
    this.onClose,
  });

  @override
  Widget build(BuildContext context) {
    Color background;
    IconData alertIcon;

    switch (variant) {
      case AlertVariant.info:
        background = Colors.blue[100]!;
        alertIcon = Icons.info;
        break;
      case AlertVariant.success:
        background = Colors.green[100]!;
        alertIcon = Icons.check_circle;
        break;
      case AlertVariant.warning:
        background = Colors.orange[100]!;
        alertIcon = Icons.warning;
        break;
      case AlertVariant.error:
        background = Colors.red[100]!;
        alertIcon = Icons.error;
        break;
    }

    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Icon(icon ?? alertIcon),
          const SizedBox(width: 8),
          Expanded(child: Text(message)),
          if (onClose != null)
            IconButton(
              icon: const Icon(Icons.close),
              onPressed: onClose,
            ),
        ],
      ),
    );
  }
}
