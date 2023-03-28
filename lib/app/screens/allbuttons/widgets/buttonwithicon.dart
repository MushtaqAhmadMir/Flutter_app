import 'package:flutter/material.dart';

class ButtonWithIcon extends StatelessWidget {
  final Function onPress;
  const ButtonWithIcon({
    super.key,
    required this.onPress
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () => onPress(),
        child: Container(
          height: 60,
          width: 300,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: const Color.fromARGB(255, 10, 233, 218)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
              Icon(Icons.add_a_photo_rounded),
              Padding(
                padding: EdgeInsets.only(left: 12),
                child: Text('Take Photo'),
              )
            ]),
          ),
        ));
  }
}
