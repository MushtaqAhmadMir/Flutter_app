import 'package:flutter/material.dart';

class ListViewExample extends StatelessWidget {
  final String name;
   ListViewExample({super.key, required this.name});

  final List<String> languages = [
    'Java',
    'Javascript',
    'Dart',
    'Flutter',
    'React native',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text(name)),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.separated(
            itemBuilder: (context, index) {
              return Container(
                height: 150,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.red,
                ),
                child: Center(
                    child: Text(languages[index],
                        style:
                            const TextStyle(color: Colors.white, fontSize: 25)
                        // selectionColor: Colors.blue,
                        )),
              );
            },
            separatorBuilder: (context, index) {
              return const SizedBox(height: 10);
            },
            itemCount: languages.length),
      ),
    ));
  }
}
