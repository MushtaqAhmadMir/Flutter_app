import 'package:flutter/material.dart';

class GradientButton extends StatelessWidget {
  final Function() onTap;
  final String title;
  const GradientButton({
    required this.onTap,
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.only(top: 16.0),
        child: Ink(
          height: 50,
          width: 300,
          decoration: BoxDecoration(
              // shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(12),
              gradient: const LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [Colors.green, Colors.yellow])),
          child: InkWell(
            splashColor: Colors.yellow,
            // customBorder: ,
            onTap: () => onTap(),
            child: Center(
                child: Text(
              title,
              style: const TextStyle(color: Colors.white, fontSize: 22),
            )),
          ),
        ),
      ),
    );
  }
}
