import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final TextEditingController myController;
  final String myLabel;
  final bool isObscured;
  final Icon myIcon;

  const MyTextField({
    Key? key,
    required this.myController,
    required this.myLabel,
    this.isObscured = false,
    required this.myIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: myController,
      decoration: InputDecoration(
        border: const UnderlineInputBorder(),
        label: Text(myLabel),
        prefixIcon: myIcon,
      ),
    );
  }
}
