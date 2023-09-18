import 'package:flutter/material.dart';
import 'package:flutter_booky_1/core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.backgroundColor,
      this.borderRadius,
      required this.textColor,
      required this.text,
      this.fontSize});
  final double? fontSize;
  final String text;
  final Color backgroundColor;
  final Color textColor;
  final BorderRadius? borderRadius;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
                borderRadius: borderRadius ?? BorderRadius.circular(12))),
        child: Text(text,
            style: Styles.textStyle18.copyWith(
                color: textColor,
                fontWeight: FontWeight.w900,
                fontSize: fontSize)),
      ),
    );
  }
}
