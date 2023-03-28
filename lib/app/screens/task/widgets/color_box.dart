import 'package:flutter/material.dart';

class ColorBox extends StatelessWidget {
  final Color color;
  final bool isChild;
  const ColorBox({
    super.key,
    required this.color,
    required this.isChild,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 42,
        color: color,
        width: MediaQuery.of(context).size.width / 5.5,
        child: Center(
          child: isChild
              ? Text(
                  'pallette',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                )
              : null,
        ));
  }
}