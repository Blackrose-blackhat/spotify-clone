import 'package:flutter/material.dart';

class MyLogo extends StatelessWidget {
  final double logoWidth;

  const MyLogo({super.key, required this.logoWidth});

  @override
  Widget build(BuildContext context) {
    return (Image.asset(
      'assets/images/spotify-logo.png',
      width: logoWidth,
    ));
  }
}
