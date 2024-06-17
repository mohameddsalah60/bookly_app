import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.borderRadius,
    this.color,
    required this.text,
    this.colorText,
    this.fontSize,
    this.onPressed,
  });
  final BorderRadiusGeometry borderRadius;
  final Color? color;
  final Color? colorText;
  final String text;
  final double? fontSize;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius,
          ),
          backgroundColor: color ?? Colors.white,
        ),
        child: Align(
          alignment: Alignment.center,
          child: Text(
            text,
            style: Styles.styleBold20.copyWith(
              fontSize: fontSize ?? 18,
              color: colorText ?? Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
