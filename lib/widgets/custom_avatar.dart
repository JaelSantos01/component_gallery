import 'package:flutter/material.dart';

enum AvatarVariant { circular, rounded, square }

class CustomAvatar extends StatelessWidget {
  final String? imageUrl;
  final String? initials;
  final AvatarVariant variant;
  final double size;
  final Color? backgroundColor;

  const CustomAvatar({
    super.key,
    this.imageUrl,
    this.initials,
    this.variant = AvatarVariant.circular,
    this.size = 60,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    BoxShape shape = variant == AvatarVariant.circular
        ? BoxShape.circle
        : BoxShape.rectangle;

    BorderRadius? borderRadius = variant == AvatarVariant.rounded
        ? BorderRadius.circular(12)
        : null;

    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: backgroundColor ?? Colors.grey[300],
        shape: shape,
        borderRadius: borderRadius,
        image: imageUrl != null
            ? DecorationImage(image: NetworkImage(imageUrl!), fit: BoxFit.cover)
            : null,
      ),
      child: imageUrl == null
          ? Center(
              child: Text(
                initials ?? '?',
                style: TextStyle(fontSize: size / 2.5, color: Colors.white),
              ),
            )
          : null,
    );
  }
}
