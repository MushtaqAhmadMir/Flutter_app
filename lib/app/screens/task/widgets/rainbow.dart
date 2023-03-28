import 'package:flutter/material.dart';
import 'package:my_app/app/screens/task/widgets/color_box.dart';

class Rainbow extends StatelessWidget {
  const Rainbow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 22),
      child: Container(
        height: 42,
        child: Flexible(
          flex: 1,
          child: Row(
            children: [
              ColorBox(
                color: Color(0xFF571945),
                isChild: true,
              ),
              ColorBox(
                color: Color(0xFF900D3E),
                isChild: false,
              ),
              ColorBox(
                color: Color(0xFFC70138),
                isChild: false,
              ),
              ColorBox(
                color: Color(0xFFFF5733),
                isChild: false,
              ),
              ColorBox(
                color: Color(0xFFFFC300),
                isChild: false,
              )
            ],
          ),
        ),
      ),
    );
  }
}