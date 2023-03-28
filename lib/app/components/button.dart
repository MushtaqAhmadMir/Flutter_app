import 'package:flutter/material.dart';

void main(List<String> args) {}

class Button extends StatelessWidget {
  const Button({ super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:  TextButton(child: const Text('Button'),onPressed: () => {},),
    );
}
}
