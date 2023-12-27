import 'package:flutter/material.dart';

class NeumorphicIcon extends StatelessWidget {
  final IconData iconData;
  final double size;
  final double depth;

  const NeumorphicIcon({
    super.key,
    required this.iconData,
    this.size = 24.0,
    this.depth = 12.0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size + depth,
      height: size + depth,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.grey[400]!,
            offset: Offset(-depth / 3, -depth / 3),
            blurRadius: 5,
          ),
          BoxShadow(
            color: Colors.grey[400]!,
            offset: Offset(depth / 3, depth / 3),
            blurRadius: 5,
          ),
        ],
      ),
      child: Center(
        child: Icon(
          iconData,
          size: size,
          color: Colors.grey[300],
          shadows: [
            BoxShadow(
              color: Colors.grey[600]!,
              offset: Offset(depth / 4, depth / 4),
              blurRadius: 5,
            ),
          ],
        ),
      ),
    );
  }
}
