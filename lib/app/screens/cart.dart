import 'package:flutter/material.dart';

void main() {}

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            // Icon(xwIconData())
            TextButton(
                onPressed: () => {},
                child: const Text(
                  'edit',
                  style: TextStyle(color: Colors.amberAccent),
                ))
          ],
          title: const Text('hey'),
        ),
        body: Center(
          child: Container(
              child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Flexible(
                  flex: 1,
                  fit: FlexFit.tight,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Flexible(
                        flex: 1,
                        fit: FlexFit.tight,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.red,
                          ), //BoxDecoration
                        ), //Container
                      ), //Flexible
                      const SizedBox(
                        width: 20,
                      ), //SizedBox
                      Flexible(
                        flex: 1,
                        fit: FlexFit.tight,
                        child: Container(
                            decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.red,
                        ) //BoxDecoration
                            ), //Container
                      ) //Flexible
                    ],
                  ), //Row
                ), //Flexible
                const SizedBox(
                  height: 20,
                ), //SizedBox
                Flexible(
                  flex: 1,
                  fit: FlexFit.tight,
                  child: Container(
                    width: 380,
                    height: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue), //BoxDecoration
                  ), //Container
                ), //Flexible
                const SizedBox(
                  height: 20,
                ), //SizedBox
                Flexible(
                  flex: 2,
                  fit: FlexFit.tight,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Flexible(
                        flex: 2,
                        fit: FlexFit.tight,
                        child: Container(
                          width: 180,
                          height: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.cyan,
                          ), //BoxDecoration
                        ), //Container
                      ), //Flexible
                      const SizedBox(
                        width: 20,
                      ), //SizedBox
                      Flexible(
                        flex: 2,
                        fit: FlexFit.tight,
                        child: Container(
                            width: 180,
                            height: 300,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.cyan,
                            ) //BoxDecoration
                            ), //Container
                      ) //Flexible
                    ],
                  ), //Row
                ), //Flexible
              ],
            ), //Column
          ) //Padding
              ), //Container
        ) //Container

        );
  }
}
