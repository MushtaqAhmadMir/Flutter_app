import 'package:flutter/material.dart';

class TextComp extends StatelessWidget {
  final String title;

  final String value;

  const TextComp({
    super.key,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 24),
        ),
        Text(
          value,
          style: TextStyle(fontSize: 14),
        ),
      ],
    );
  }
}