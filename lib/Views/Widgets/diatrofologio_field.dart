import 'package:flutter/material.dart';

class DiatrofologioField extends StatelessWidget {
  final TextEditingController myController;
  const DiatrofologioField({
    Key? key,
    required this.myController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: myController,
      decoration: const InputDecoration(
        border: UnderlineInputBorder(),
      ),
    );
  }
}
