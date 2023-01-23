import 'package:flutter/material.dart';

class CalendarText extends StatelessWidget {
  final String label;
  CalendarText({super.key, required this.label});

  final TextEditingController _datecontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 39,
      height: 25,
      child: TextFormField(
        controller: _datecontroller,
        decoration: InputDecoration(
          labelText: label,
          labelStyle: const TextStyle(
            color: Color.fromARGB(137, 145, 143, 143),
            fontSize: 8.2,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Color.fromARGB(255, 68, 68, 68),
            ),
            borderRadius: BorderRadius.circular(50),
          ),
        ),
      ),
    );
  }
}
