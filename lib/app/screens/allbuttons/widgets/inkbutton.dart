import 'package:flutter/material.dart';

class InkButton extends StatelessWidget {
  const InkButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Ink(
      height: 48,
      width: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.blueAccent,
      ),
      child: InkWell(
        splashColor: Colors.red,
        onTap: () => {},
        child: const Center(child: Text('INK BUTTON')),
      ),
    );
  }
}