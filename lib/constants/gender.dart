import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Gender extends StatefulWidget {
  const Gender({super.key});

  @override
  State<Gender> createState() => _GenderState();
}

enum GenderChose {
  male,
  female,
}

class _GenderState extends State<Gender> {
  GenderChose? _genderChose = GenderChose.male;
  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
