import 'package:flutter/material.dart';
import 'package:my_app/app/components/button.dart';

void main(List<String> args) {}

class Responsive extends StatelessWidget {
  const Responsive({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: MediaQuery.of(context).size.height / 2,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.green,
                  ),
                  child: Center(
                      child: Text(
                    'Responsivee',
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width / 10 * 1),
                  )),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width/2,
                height: MediaQuery.of(context).size.height/3,
                color: Colors.blue,
                child: LayoutBuilder(builder: (context, constraints) {
                  return Center(
                    child: Container(
                      width: constraints.maxWidth *0.8,
                      height: constraints.maxHeight*0.7,
                      color: Colors.red,
                    ),
                  );
                }),
              ),
              const Button()
            ],
          ),
        ),
      ),
    );
  }
}
