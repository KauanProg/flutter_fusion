import 'package:flutter/material.dart';

class FusionOutlinedButton extends StatelessWidget {
  final String texto;
  final VoidCallback onPressed;
  final Color borderColor;
  final Color textColor;

  const FusionOutlinedButton({
    super.key,
    required this.texto,
    required this.onPressed,
    this.borderColor = Colors.grey,
    this.textColor = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Ink(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
        decoration: BoxDecoration(
          border: Border.all(color: borderColor),
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
