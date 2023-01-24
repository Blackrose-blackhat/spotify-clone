import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:social_login_buttons/social_login_buttons.dart';
import 'package:spotify_clone/constants/calenda_text.dart';
import 'package:spotify_clone/constants/custom_button.dart';
import 'package:spotify_clone/constants/custom_text.dart';
import 'package:spotify_clone/constants/logo.dart';

class SignUp extends StatefulWidget {
  static const String routeName = '/signup-screen';
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _passwordcontroller = TextEditingController();
  final TextEditingController _usernamecontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 48.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    MyLogo(logoWidth: 50),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Spotify',
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 70,
              ),
              Padding(
                padding: const EdgeInsets.all(22),
                child: Wrap(
                  runSpacing: 20,
                  children: [
                    CustomTextField(
                      label: '   Email Address',
                      controller: _usernamecontroller,
                    ),
                    CustomTextField(
                      label: '   Full Name',
                      controller: _emailcontroller,
                    ),
                    CustomTextField(
                      label: '    Password',
                      controller: _passwordcontroller,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              CustomButton(
                onTap: () {},
                text: 'Signup',
                height: 50,
                width: 320,
              ),
              const SizedBox(
                height: 20,
              ),
              Text('OR',
                  style: GoogleFonts.nunito(
                    fontSize: 12,
                  )),
              const SizedBox(
                height: 30,
              ),
              SocialLoginButton(
                buttonType: SocialLoginButtonType.google,
                width: 320,
                borderRadius: 32,
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
