import 'package:flutter/material.dart';
import 'package:spotify_clone/auth/screens/login.dart';
import 'package:spotify_clone/auth/screens/signup.dart';

void main() {
  runApp(const AuthenticationPage());
}

class AuthenticationPage extends StatelessWidget {
  const AuthenticationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFF17161b),
        textTheme: const TextTheme().copyWith(
          bodyText2: const TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        primarySwatch: Colors.green,
      ),
      home: const SignUp(),
    );
  }
}
