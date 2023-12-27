import 'package:flutter/material.dart';

class NeumorphicCheckbox<T> extends StatelessWidget {
  final T value;
  final T? groupValue;
  final ValueChanged<T?> onChanged;
  final double size;
  final Color? activeColor;
  final Color? inactiveColor;
  final bool? isDarkMode;
  final Duration? duration;

  const NeumorphicCheckbox({
    super.key,
    required this.value,
    required this.groupValue,
    required this.onChanged,
    this.size = 24.0,
    this.activeColor,
    this.inactiveColor,
    this.isDarkMode = false,
    this.duration,
  });

  @override
  Widget build(BuildContext context) {
    final bool isSelected = value == groupValue;
    final bool isPressed = isSelected;

    Color backgroundColor = isDarkMode!
        ? inactiveColor ?? const Color(0xff2e3239)
        : activeColor ?? const Color(0xffe7ecef);

    double blurValue = isPressed ? 3 : 15;

    return GestureDetector(
      onTap: () {
        if (!isSelected) {
          onChanged(value);
        }
      },
      child: AnimatedContainer(
        duration: duration ?? const Duration(milliseconds: 100),
        width: size,
        height: size,
        decoration: BoxDecoration(
          color: backgroundColor,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              blurRadius: blurValue,
              offset: const Offset(3, 3),
              color: isDarkMode! ? const Color(0xff23262a) : Colors.white,
            ),
            BoxShadow(
              blurRadius: blurValue,
              offset: const Offset(-3, -3),
              color: isDarkMode!
                  ? const Color(0xff35393f)
                  : const Color(0xffa7a9af),
            ),
          ],
        ),
        child: Center(
          child: Icon(
            isSelected ? Icons.check : Icons.check_box_outline_blank,
            size: size * 0.6,
            color: isDarkMode! ? Colors.white : Colors.grey[500],
          ),
        ),
      ),
    );
  }
}
