import 'package:flutter/material.dart';

class FusionFilledButton extends StatelessWidget {
  final String texto;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final Color textColor;

  const FusionFilledButton({
    super.key,
    required this.texto,
    required this.onPressed,
    this.backgroundColor = Colors.blue,
    this.textColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Ink(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          texto,
          style: TextStyle(
            color: textColor,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
