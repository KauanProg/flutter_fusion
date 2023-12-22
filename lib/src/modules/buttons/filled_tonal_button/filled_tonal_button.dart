import 'package:flutter/material.dart';

class FusionFilledTonalButton extends StatelessWidget {
  final String texto;
  final VoidCallback onPressed;
  final Color buttonColor;
  final Color textColor;

  const FusionFilledTonalButton({
    super.key,
    required this.texto,
    required this.onPressed,
    this.buttonColor = Colors.teal,
    this.textColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Ink(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
        decoration: BoxDecoration(
          color: buttonColor,
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
