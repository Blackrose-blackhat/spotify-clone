import 'package:flutter/material.dart';
import 'package:spotify_clone/constants/custom_text.dart';

class AuthScreen extends StatefulWidget {
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
        padding: const EdgeInsets.all(8.0),
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/spotify-logo.png',
                  width: 120,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text('Spotify'),
                const SizedBox(
                  height: 20,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
