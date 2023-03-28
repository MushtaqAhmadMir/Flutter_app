import 'package:flutter/material.dart';

void main(List<String> args) {}

class ContainerEx extends StatelessWidget {
  const ContainerEx({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Container Example'),
        ),
        floatingActionButton: FloatingActionButton(onPressed: () => {debugPrint('clicked')},),
        body: Center(
            child: Container(
          height: 200,
          width: 300,
          // color: Colors.red,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0), color: Colors.red),
          child: const Center(child: Text('Hey There Im using Flutter!')),
        )),
      ),
    );
  }
}
