import 'package:flutter/material.dart';

class Achivement extends StatelessWidget {
  final String title;
  final String image;
  const Achivement({
    super.key,
    required this.title,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(image),
        Padding(
          padding: const EdgeInsets.only(left: 6),
          child: Text(
            title,
            style: TextStyle(fontSize: 18),
          ),
        )
      ],
    );
  }
}