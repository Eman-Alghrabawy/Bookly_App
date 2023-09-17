import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({
    super.key,
    required this.slidingAnimation,
  });

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: slidingAnimation,
        builder: (context, _) {
          return SlideTransition(
            position: slidingAnimation,
            child: Text(
              "Bookly, read free books",
              style: GoogleFonts.dancingScript(fontSize: 30),
              textAlign: TextAlign.center,
            ),
          );
        });
  }
}
