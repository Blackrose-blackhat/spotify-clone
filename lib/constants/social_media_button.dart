import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SocialButtons extends StatelessWidget {
  final String text;
  const SocialButtons({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Color(0xFF17161b),
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(255, 112, 107, 107),
            offset: Offset(-6, -6),
            blurRadius: 7,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: GoogleFonts.openSans(
          textStyle: const TextStyle(
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
