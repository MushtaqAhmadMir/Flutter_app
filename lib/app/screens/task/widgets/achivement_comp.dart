
import 'package:flutter/material.dart';
import 'package:my_app/app/screens/task/widgets/achivement.dart';

class AchivementComp extends StatelessWidget {
  const AchivementComp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 21, left: 70, right: 70),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Achivement(
            title: '120',
            image: 'lib/app/assets/heart.png',
          ),
          Achivement(
            title: '43K',
            image: 'lib/app/assets/cursor.png',
          ),
          Achivement(
            title: '2.3K',
            image: 'lib/app/assets/share.png',
          ),
        ],
      ),
    );
  }
}