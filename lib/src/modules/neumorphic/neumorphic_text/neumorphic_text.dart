import 'package:flutter/material.dart';

class NeumorphicText extends StatelessWidget {
  final String text;
  final TextStyle textStyle;
  final double depth;

  const NeumorphicText({
    super.key,
    required this.text,
    this.textStyle = const TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
    this.depth = 10.0,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: textStyle.copyWith(
        shadows: [
          Shadow(
            color: Colors.white,
            offset: Offset(-depth / 2, -depth / 2),
          ),
          Shadow(
            color: const Color(0xffa7a9af),
            offset: Offset(depth / 2, depth / 2),
          ),
        ],
      ),
    );
  }
}