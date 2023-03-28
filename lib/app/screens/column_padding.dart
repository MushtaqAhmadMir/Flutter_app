import 'package:flutter/material.dart';

void main(List<String> args) {}

class ColumnPadding extends StatelessWidget {
  const ColumnPadding({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // floatingActionButton: FloatingActionButton(onPressed: () => {},child: const Text('he',style: TextStyle(color: Colors.red),),),

        body: Padding(
          padding: const EdgeInsets.only(top:100),
          child: Center(
              child: Column(
            children: [
              Row(
                children: [
                  TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: const Icon(Icons.arrow_back)),
                      const Text('Back')
                ],
              ),
              Container(
                  height: 400,
                  width: 300,
                  // color: Colors.red,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      color: Colors.red),
                  // child:  const CircleAvatar( backgroundImage: AssetImage('lib/assets/bw.png')),
                  child: Image.asset(
                    'lib/app/assets/bw.png',
                    fit: BoxFit.cover,
                  )
                  // child: Column(
                  //   mainAxisAlignment: MainAxisAlignment.start,
                  //   crossAxisAlignment: CrossAxisAlignment.start,
                  //   // Container
                  //   children: [
                  //     Container(
                  //       color: Colors.yellow,
                  //       child: const Text('hello there'),
                  //     ),
                  //     Container(
                  //       color: Colors.teal,
                  //       child: TextButton(
                  //           onPressed: () => {}, child: const Icon(Icons.home)),
                  //     ),
                  //     Row(
                  //       // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //       // mainAxisSize: MainAxisSize.min,
                  //       children: [
                  //         const Text('Row 1'),
                  //         const SizedBox(
                  //           height: 20,
                  //           width: 20,
                  //         ),
                  //         Container(
                  //           height: 200,
                  //           width: 180,
                  //           color: Colors.lightBlue,
                  //           child: Image.asset(
                  //             'lib/assets/bw.png',
                  //             cacheHeight: 100,
                  //             cacheWidth: 80,
                  //           ),
                  //         ),
                  //         const SizedBox(
                  //           height: 100,
                  //           width: 100,
                  //           child: CircleAvatar(
                  //             backgroundImage: AssetImage('lib/assets/bw.png'),
                  //           ),
                  //         ),
                  //         // const Text('Row '),
                  //       ],
                  //     ),
                  //   ],
                  // )
                  ),
            ],
          )),
        ),
      ),
    );
  }
}
