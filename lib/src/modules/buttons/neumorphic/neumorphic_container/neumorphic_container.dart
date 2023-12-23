// ignore_for_file: prefer_const_constructors_in_immutables, must_be_immutable

import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';

class NeumorphicContainer extends StatefulWidget {
  final VoidCallback onPressed;
  final Widget child;
  final double width;
  final double height;

  NeumorphicContainer({
    super.key,
    required this.onPressed,
    required this.child,
    required this.width,
    required this.height,
  });

  @override
  State<NeumorphicContainer> createState() => _NeumorphicContainerState();
}

class _NeumorphicContainerState extends State<NeumorphicContainer> {
  bool isPressed = false;
  bool isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    Color backgroundColor = isDarkMode ? const Color(0xff2e3239) : const Color(0xffe7ecef);
    Offset distance = isPressed ? const Offset(5, 5) : const Offset(15, 15);
    double blur = isPressed ? 3 : 15;

    return GestureDetector(
      onTap: () => setState(() => isPressed = !isPressed),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 100),
        width: widget.width,
        height: widget.height,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(30),
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
        child: Center(
          child: widget.child,
        ),
      ),
    );
  }
}