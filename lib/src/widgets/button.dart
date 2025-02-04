import 'package:deal_fineder_app/src/widgets/poppins_text.dart';
import 'package:flutter/material.dart';

import '../utils/color.dart';

class AppButton extends StatelessWidget {
  final String title;
  final double fontSize;
  final double radius;
  final double height;
  final Color? backgroundColor;
  final VoidCallback onPressed;
  final BoxDecoration? boxDecoration;

  const AppButton({
    super.key,
    required this.title,
    required this.onPressed,
    this.fontSize = 14,
    this.radius = 140,
    this.height = 52,
    this.backgroundColor = AppColors.button,
    this.boxDecoration,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
          minimumSize: Size.fromHeight(height),
          // minimumSize: Size(
          //   366,
          //   height,
          // ),
          // maximumSize: Size.fromHeight(height),
          // fixedSize: Size.fromHeight(height),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius),
          ),
          backgroundColor: backgroundColor,
          backgroundBuilder: (context, states, child) {
            return DecoratedBox(
              decoration: boxDecoration ?? BoxDecoration(),
              child: child,
            );
          }),
      child: PoppinsText(
        title,
        color: AppColors.white,
        fontWeight: FontWeight.w600,
        size: fontSize,
      ),
    );
  }
}

class AppOutlineButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final double radius;
  final double height;
  final double fontSize;

  const AppOutlineButton({
    super.key,
    required this.title,
    required this.onPressed,
    this.fontSize = 14,
    this.radius = 140,
    this.height = 52,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        minimumSize: Size.fromHeight(height),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius),
        ),
        // backgroundColor: AppColors.button,
      ),
      child: PoppinsText(
        title,
        fontWeight: FontWeight.w600,
        size: fontSize,
      ),
    );
  }
}
