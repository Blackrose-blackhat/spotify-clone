import 'dart:ui';
import 'package:spotify_clone/constants/logo.dart';
import 'package:flutter/material.dart';

import 'package:spotify_clone/constants/custom_text.dart';
import 'package:spotify_clone/constants/custom_button.dart';

class AuthScreen extends StatefulWidget {
  static const String routeName = '/login-screen';
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final TextEditingController _usernamecontroller = TextEditingController();
  final TextEditingController _passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFF17161b),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 116, 115, 115),
                          offset: Offset(-5, -5),
                          blurRadius: 15,
                          spreadRadius: 0,
                        ),
                      ],
                    ),
                    child: Image.asset(
                      'assets/images/spotify-logo.png',
                      width: 100,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Spotify',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomTextField(
                    label: 'username',
                    controller: _usernamecontroller,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomTextField(
                    label: 'Password',
                    controller: _passwordcontroller,
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 190),
                    child: Text(
                      'Forgot Password ?',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white54,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomButton(
                    onTap: () {},
                    text: 'Login',
                    height: 50,
                    width: double.infinity,
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
