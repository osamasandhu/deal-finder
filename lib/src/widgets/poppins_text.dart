import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PoppinsText extends Text {
  PoppinsText(
    super.data, {
    super.key,
    super.textAlign,
    super.maxLines,
    Color? color = Colors.black,
    double? height,
    double? letterSpacing,
    double size = 14,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    TextDecoration? decoration,
    TextOverflow? textOverflow,
  }) : super(
          style: GoogleFonts.poppins(
            color: color,
            fontWeight: fontWeight,
            fontSize: size,
            height: height,
            fontStyle: fontStyle,
            decoration: decoration,
            decorationColor: color,
            letterSpacing: letterSpacing,
          ),
          softWrap: true,
          overflow: textOverflow,
        );
}

class InterText extends Text {
  InterText(
    super.data, {
    super.key,
    super.textAlign,
    super.maxLines,
    Color? color = Colors.black,
    double? height,
    double? letterSpacing,
    double size = 14,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    TextDecoration? decoration,
    TextOverflow? textOverflow,
  }) : super(
          style: GoogleFonts.inter(
            color: color,
            fontWeight: fontWeight,
            fontSize: size,
            height: height,
            fontStyle: fontStyle,
            decoration: decoration,
            decorationColor: color,
            letterSpacing: letterSpacing,
          ),
          softWrap: true,
          overflow: textOverflow,
        );
}
