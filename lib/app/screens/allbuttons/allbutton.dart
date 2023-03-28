import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_app/app/navigation/constants.dart';
import 'package:my_app/app/screens/allbuttons/widgets/buttonwithicon.dart';
import 'package:my_app/app/screens/allbuttons/widgets/gradientButton.dart';
import 'package:my_app/app/screens/allbuttons/widgets/inkbutton.dart';
import 'package:my_app/app/screens/allbuttons/widgets/roundbutton.dart';

void main(List<String> args) {}

class Buttons extends StatelessWidget {
  const Buttons({super.key});

  @override
  Widget build(BuildContext context) {
    bool buttonValue = false;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Button Tutorial'),
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(onPressed: () => {}, child: const Text('Text button')),
            const RoundButton(),
            ButtonWithIcon(
              onPress: () => {
                // Navigator.pushNamed(context, '/columnPadding')
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: ((context) => const ColumnPadding())
                //         )
                //         )
              },
            ),
            IconButton(
                onPressed: () => {},
                icon: const Icon(Icons.wifi_calling_3_sharp)),
            Switch(value: buttonValue, onChanged: (value) => {}),
            const InkButton(),
            GradientButton(
              title: 'Gradient from Button',
              onTap: () {
                GoRouter.of(context).pushNamed(MyAppConstants.Listview,
                    params: {'name': 'Mushtaq from button'});
              },
            )
          ],
        ),
      ),
    );
  }
}
