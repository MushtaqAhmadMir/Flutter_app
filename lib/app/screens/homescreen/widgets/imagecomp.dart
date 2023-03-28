import 'package:flutter/material.dart';

void main(List<String> args) {
  
}

class ImageComp extends StatelessWidget {
  const ImageComp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        SizedBox(
          height: 200,
          width: 200,
          child: Image.asset('lib/app/assets/bw.png'),
        ),
        const Text(
          'Mushtaq',
          style: TextStyle(
              fontStyle: FontStyle.italic,
              color: Colors.red,
              fontSize: 28),
        )
      ],
    );
  }
}