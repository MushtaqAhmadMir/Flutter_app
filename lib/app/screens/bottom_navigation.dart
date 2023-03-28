import 'package:flutter/material.dart';
import 'package:my_app/app/screens/allbuttons/allbutton.dart';
import 'package:my_app/app/screens/cart.dart';
import 'package:my_app/app/screens/listview.dart';

void main(List<String> args) {}

class BottomNavigationExample extends StatefulWidget {
  const BottomNavigationExample({super.key});

  @override
  State<BottomNavigationExample> createState() =>
      _BottomNavigationExampleState();
}

class _BottomNavigationExampleState extends State<BottomNavigationExample> {
   int _currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        
        appBar: AppBar(title: const Text('Bottom Navigation')),
        body: IndexedStack(
          index: _currentIndex,
          children:  [
            Buttons(),
            ListViewExample(name: 'Mushtaq',),
            Cart()

        ]),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          backgroundColor: Colors.amber,
          selectedItemColor: Colors.cyan,
          onTap: (value) {
            setState(() {
              _currentIndex=value;
            });
          },
          items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.car_crash_outlined), label: 'Car'),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_a_photo),
              label: 'Add',
            )
        ]),
      ),
    );
  }
}
