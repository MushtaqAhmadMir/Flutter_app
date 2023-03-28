import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  const RoundButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () => {},
        child: Container(
          height: 60,
          width: 300,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: const Color.fromARGB(255, 222, 83, 14)),
          child: const Center(
              child: Text(
            'Round Button',
            style: TextStyle(color: Colors.white),
          )),
        ));
  }
}