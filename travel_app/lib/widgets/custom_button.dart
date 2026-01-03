import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;

  // Text & icons
  final TextStyle? textStyle;
  final Widget? prefix;
  final Widget? suffix;

  // Style
  final Color? backgroundColor;
  final Color? foregroundColor;
  final double borderRadius;
  final double elevation;
  final EdgeInsetsGeometry padding;
  final BorderSide? border;

  // Size
  final double? width;
  final double? height;

  const CustomButton({
    super.key,
    required this.text,
    this.onPressed,
    this.textStyle,
    this.prefix,
    this.suffix,
    this.backgroundColor,
    this.foregroundColor,
    this.borderRadius = 50,
    this.elevation = 0,
    this.padding = const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
    this.border,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          foregroundColor: foregroundColor,
          elevation: elevation,
          padding: padding,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            side: border ?? BorderSide.none,
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (prefix != null) ...[prefix!, const SizedBox(width: 8)],

            Text(text, style: textStyle),

            if (suffix != null) ...[const SizedBox(width: 8), suffix!],
          ],
        ),
      ),
    );
  }
}
