import 'package:flutter/material.dart';

class FusionFilledButton extends StatelessWidget {
  final VoidCallback onPressed;
  final VoidCallback? onLongPress;
  final void Function(bool)? onHover;
  final void Function(bool)? onFocusChange;
  final FocusNode? focusNode;
  final bool autofocus;
  final Widget child;
  final Color buttonColor;
  final Color textColor;
  final EdgeInsets padding;
  final double borderRadius;
  final double borderWidth;

  const FusionFilledButton({
    Key? key,
    required this.onPressed,
    this.onLongPress,
    this.onHover,
    this.onFocusChange,
    this.focusNode,
    this.autofocus = false,
    required this.child,
    this.buttonColor = Colors.blue,
    this.textColor = Colors.white,
    this.padding = const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
    this.borderRadius = 8.0,
    this.borderWidth = 1.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Focus(
      focusNode: focusNode,
      onFocusChange: onFocusChange,
      autofocus: autofocus,
      child: InkWell(
        onTap: onPressed,
        onLongPress: onLongPress,
        onHover: onHover,
        borderRadius: BorderRadius.circular(borderRadius),
        child: Ink(
          decoration: BoxDecoration(
            color: buttonColor,
            borderRadius: BorderRadius.circular(borderRadius),
            border: Border.all(color: Colors.grey.withOpacity(0.8), width: borderWidth),
          ),
          padding: padding,
          child: child,
        ),
      ),
    );
  }
}
