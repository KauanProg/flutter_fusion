import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';

class NeumorphicContainer extends StatefulWidget {
  final VoidCallback onPressed;
  final Widget child;
  final double width;
  final double height;
  final Color? backgroundColorLight;
  final Color? backgroundColorDark;
  final Offset? pressedDistance;
  final Offset? releasedDistance;
  final double? blur;
  final bool? isDarkMode;
  final BorderRadiusGeometry? borderRadius;

  const NeumorphicContainer({
    super.key,
    required this.onPressed,
    required this.child,
    required this.width,
    required this.height,
    this.backgroundColorLight,
    this.backgroundColorDark,
    this.pressedDistance,
    this.releasedDistance,
    this.blur,
    this.isDarkMode,
    this.borderRadius,
  });

  @override
  State<NeumorphicContainer> createState() => _NeumorphicContainerState();
}

class _NeumorphicContainerState extends State<NeumorphicContainer> {
  bool isPressed = false;
  bool isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    Color backgroundColor = isDarkMode
        ? widget.backgroundColorDark ?? const Color(0xff2e3239)
        : widget.backgroundColorLight ?? const Color(0xffe7ecef);
    Offset distance = isPressed
        ? widget.pressedDistance ?? const Offset(5, 5)
        : widget.releasedDistance ?? const Offset(15, 15);
    double blur = widget.blur != null
        ? (isPressed ? widget.blur! : widget.blur! * 3)
        : (isPressed ? 3 : 15);

    return GestureDetector(
      onTap: () => setState(() => isPressed = !isPressed),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 100),
        width: widget.width,
        height: widget.height,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: widget.borderRadius ?? BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              blurRadius: blur,
              offset: -distance,
              color: isDarkMode ? const Color(0xff35393f) : Colors.white,
              inset: isPressed,
            ),
            BoxShadow(
              blurRadius: blur,
              offset: distance,
              color: isDarkMode
                  ? const Color(0xff23262a)
                  : const Color(0xffa7a9af),
              inset: isPressed,
            ),
          ],
        ),
        child: widget.child,
      ),
    );
  }
}
