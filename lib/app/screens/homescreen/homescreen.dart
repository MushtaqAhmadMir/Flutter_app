import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_app/app/components/button.dart';
import 'package:my_app/app/navigation/constants.dart';
import 'package:my_app/app/screens/allbuttons/widgets/gradientButton.dart';
import 'package:my_app/app/screens/homescreen/widgets/header.dart';
import 'package:my_app/app/screens/homescreen/widgets/imagecomp.dart';

void main(List<String> args) {}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Column(
        children:  [
          Header(),
          Button(),
          GradientButton(onTap: ()=>{
          GoRouter.of(context).pushNamed(MyAppConstants.Buttons)
          }, title: 'go to new page'),
          ImageComp(),
        ],
      )),
    );
  }
}


