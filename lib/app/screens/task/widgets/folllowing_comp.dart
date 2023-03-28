import 'package:flutter/material.dart';
import 'package:my_app/app/screens/task/widgets/text_comp.dart';

class FollowingComp extends StatelessWidget {
  const FollowingComp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12, left: 25, right: 25),
      child: Container(
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        TextComp(title: '2.1K', value: 'Followers'),
        TextComp(title: '50', value: 'Artworks'),
        TextComp(title: '21', value: 'Exhibitions'),
      ])),
    );
  }
}