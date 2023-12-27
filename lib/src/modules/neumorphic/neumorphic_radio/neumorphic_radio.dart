import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';

class NeumorphicRadioButton<T> extends StatelessWidget {
  final T value;
  final T? groupValue;
  final ValueChanged<T?> onChanged;
  final String title;
  final TextStyle? style;
  final double width;
  final double height;
  final Color? backgroundColorLight;
  final Color? backgroundColorDark;
  final Offset? pressedDistance;
  final Offset? releasedDistance;
  final double? blur;
  final bool? isDarkMode;
  final Duration? duration;

  const NeumorphicRadioButton({
    super.key,
    required this.value,
    required this.groupValue,
    required this.onChanged,
    required this.title,
    this.style,
    required this.width,
    required this.height,
    this.backgroundColorLight,
    this.backgroundColorDark,
    this.pressedDistance,
    this.releasedDistance,
    this.blur,
    this.isDarkMode = false,
    this.duration,
  });

  @override
  Widget build(BuildContext context) {
    final bool isSelected = value == groupValue;
    final bool isPressed = isSelected;

    Color backgroundColor = isDarkMode!
        ? backgroundColorDark ?? const Color(0xff2e3239)
        : backgroundColorLight ?? const Color(0xffe7ecef);

    Offset distance = isPressed
        ? pressedDistance ?? const Offset(5, 5)
        : releasedDistance ?? const Offset(15, 15);

    double blurValue =
        blur != null ? (isPressed ? blur! : blur! * 3) : (isPressed ? 3 : 15);

    return GestureDetector(
      onTap: () {
        if (!isSelected) {
          onChanged(value);
        }
      },
      child: AnimatedContainer(
        duration: duration ?? const Duration(milliseconds: 100),
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: backgroundColor,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              blurRadius: blurValue,
              offset: -distance,
              color: isDarkMode! ? const Color(0xff35393f) : Colors.white,
              inset: isPressed,
            ),
            BoxShadow(
              blurRadius: blurValue,
              offset: distance,
              color: isDarkMode!
                  ? const Color(0xff23262a)
                  : const Color(0xffa7a9af),
              inset: isPressed,
            ),
          ],
        ),
        child: Center(
          child: Text(
            title,
            style: style?.copyWith(
                color: isDarkMode! ? Colors.white : Colors.black),
            maxLines: 1,
          ),
        ),
      ),
    );
  }
}
