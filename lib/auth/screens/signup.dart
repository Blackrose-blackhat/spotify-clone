import 'package:flutter/material.dart';
import 'package:spotify_clone/constants/calenda_text.dart';
import 'package:spotify_clone/constants/custom_text.dart';
import 'package:spotify_clone/constants/logo.dart';

class SignUp extends StatefulWidget {
  static const String routeName = '/signup-screen';
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

enum GenderChose {
  male,
  female,
}

class _SignUpState extends State<SignUp> {
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _passwordcontroller = TextEditingController();
  final TextEditingController _usernamecontroller = TextEditingController();
  GenderChose? _genderChose = GenderChose.male;

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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          'Date Of Birth:',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.green,
                          ),
                        ),
                        CalendarText(
                          label: 'DD',
                        ),
                        CalendarText(
                          label: 'MM',
                        ),
                        CalendarText(
                          label: 'YY',
                        ),
                        Row(
                          children: <Widget>[
                            ListTile(
                              title: const Text('Lafayette'),
                              leading: Radio<GenderChose>(
                                value: GenderChose.male,
                                groupValue: _genderChose,
                                onChanged: (GenderChose? value) {
                                  setState(() {
                                    _genderChose = value;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
