import 'package:flutter/material.dart';
import 'package:my_app/app/screens/allbuttons/widgets/buttonwithicon.dart';

class StateFullExample extends StatefulWidget {
  const StateFullExample({super.key});

  @override
  State<StateFullExample> createState() => _StateFullExampleState();
}

class _StateFullExampleState extends State<StateFullExample> {
  bool switchValue = false;
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.only(top: 100),
        child: Center(
          child: Column(
            children: [
              Switch(
                value: switchValue,
                onChanged: (value) {
                  setState(() {
                    switchValue = value;
                  });

                  print(value);
                },
              ),
              Text(
                'Counter: $counter',
                style: TextStyle(
                    color: counter % 2 == 0
                        ? Colors.amberAccent
                        : Colors.pinkAccent),
              ),
              ButtonWithIcon(onPress: () {
                setState(() {
                  counter += 1;
                });
              })
            ],
          ),
        ),
      ),
    );
  }
}
