import 'package:flutter/material.dart';
import 'package:my_app/app/statemanagement/themeservice.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeService>(
      builder: (context, themeService, child) {
        return MaterialApp(
          theme: ThemeData(
              appBarTheme:  AppBarTheme(
                  backgroundColor:
                      themeService.isDarkModeOn ? Colors.red : Colors.amber)),
          home: Scaffold(
            backgroundColor: Colors.white,
            drawer: Drawer(
              backgroundColor: Colors.amber,
              child: Padding(
                  padding: const EdgeInsets.fromLTRB(12, 100, 2, 2),
                  child: Column(
                    children: [
                      Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          // child: Column(
                          //   children: [
                          child: Container(
                            // height: 200,
                            width: 300,
                            color: Colors.red,
                            child: TextButton(
                              onPressed: () => {},
                              // style: const ButtonStyle(alignment: Alignment.topLeft),
                              child: const Text('Flutter'),
                            ),
                          )),
                      const SizedBox(
                        height: 20,
                      ),
                      Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          // child: Column(
                          //   children: [
                          child: Container(
                            // height: 200,
                            width: 300,
                            color: Colors.red,
                            child: TextButton(
                              onPressed: () => {},
                              // style: const ButtonStyle(alignment: Alignment.topLeft),
                              child: const Text('Flutter'),
                            ),
                          ))
                    ],
                  )),
            ),
            appBar: AppBar(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () => {},
                    // style: const ButtonStyle(alignment: Alignment.topLeft),
                    child: const Icon(Icons.menu),
                  ),
                  const Text('My Flutter App'),
                  TextButton(
                    onPressed: () => {},
                    // style: const ButtonStyle(alignment: Alignment.topLeft),
                    child: const Icon(Icons.car_crash),
                  ),
                ],
              ),
            ),
            floatingActionButton: FloatingActionButton(
              child: const Icon(Icons.alarm_add),
              onPressed: () => {
                Provider.of<ThemeService>(context,listen: false).toggleTheme(),
                const AlertDialog(
                  title: Text('data'),
                )
              },
            ),
            // body: ,
            body: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: const [
                  Padding(
                    padding: EdgeInsets.fromLTRB(12, 0, 0, 0),
                    child: Text(
                        'Learning a little each day adds up. Research shows that students who make learning a habit are more likely to reach their goals. Set time aside to learn and get reminders using your learning scheduler.Learning a little each day adds up. Research shows that students who make learning a habit are more likely to reach their goals. Set time aside to learn and get reminders using your learning scheduler.Learning a little each day adds up. Research shows that students who make learning a habit are more likely to reach their goals. Set time aside to learn and get reminders using your learning scheduler.Learning a little each day adds up. Research shows that students who make learning a habit are more likely to reach their goals. Set time aside to learn and get reminders using your learning scheduler.'),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(12, 0, 0, 0),
                    child: Text(
                        'Learning a little each day adds up. Research shows that students who make learning a habit are more likely to reach their goals. Set time aside to learn and get reminders using your learning scheduler.Learning a little each day adds up. Research shows that students who make learning a habit are more likely to reach their goals. Set time aside to learn and get reminders using your learning scheduler.Learning a little each day adds up. Research shows that students who make learning a habit are more likely to reach their goals. Set time aside to learn and get reminders using your learning scheduler.Learning a little each day adds up. Research shows that students who make learning a habit are more likely to reach their goals. Set time aside to learn and get reminders using your learning scheduler.'),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(12, 0, 0, 30),
                    child: Text(
                        'Learning a little each day adds up. Research shows that students who make learning a habit are more likely to reach their goals. Set time aside to learn and get reminders using your learning scheduler.Learning a little each day adds up. Research shows that students who make learning a habit are more likely to reach their goals. Set time aside to learn and get reminders using your learning scheduler.Learning a little each day adds up. Research shows that students who make learning a habit are more likely to reach their goals. Set time aside to learn and get reminders using your learning scheduler.Learning a little each day adds up. Research shows that students who make learning a habit are more likely to reach their goals. Set time aside to learn and get reminders using your learning scheduler.'),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
