import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GradientText extends StatelessWidget {
  const GradientText(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) => LinearGradient(colors: [
        Color(0xff2F7925),
        Color(0xffB5E857),
      ]).createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: Text(
        text,
        style: GoogleFonts.inter(
          fontSize: 48,
          fontWeight: FontWeight.w700,
          height: 1.1,
        ),
      ),
    );
  }
}
