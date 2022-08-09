import 'package:dikex_back/Utilities/app_colors.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback handleTap;
  const MyButton({
    Key? key,
    required this.buttonText,
    required this.handleTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: handleTap,
      style: ElevatedButton.styleFrom(primary: mainColor),
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Text(
          'Σύνδεση',
        ),
      ),
    );
  }
}
