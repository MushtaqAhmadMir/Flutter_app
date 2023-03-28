import 'package:flutter/material.dart';
import 'package:my_app/app/components/moon.dart';
import 'package:my_app/app/components/star.dart';
import 'package:my_app/app/statemanagement/themeservice.dart';
import 'package:provider/provider.dart';

void main(List<String> args) {}

class AnimationExapmle extends StatelessWidget {
  const AnimationExapmle({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(31, 246, 231, 231),
        appBar: AppBar(title: Text('Theme Animation')),
        body: Consumer<ThemeService>(
          builder: (context, themeService, child) {
            return Center(
              child: Container(
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: !themeService.isDarkModeOn
                              ? Colors.black
                              : Colors.white,
                          blurRadius: 10,
                          spreadRadius: 7,
                          offset: Offset(0, 3))
                    ],
                    borderRadius: BorderRadius.circular(12),
                    gradient: LinearGradient(
                      colors: themeService.isDarkModeOn
                          ? const [
                              Color(0xFF94A9FF),
                              Color(0xFF6B66CC),
                              Color(0xFF200F75),
                            ]
                          : const [
                              Color(0xDDFFFA66),
                              Color(0xDDFFA057),
                              Color(0xDD940B99)
                            ],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    )),
                height: 500,
                width: 300,
                child: Stack(children: [
                     Positioned(
                    top: 70,
                    right: 50,
                    child: AnimatedOpacity(
                        duration: const Duration(milliseconds: 200),
                        opacity: themeService.isDarkModeOn ? 1 : 0,
                        child: const Star()),
                  ),
                  Positioned(
                    top: 150,
                    left: 60,
                    child: AnimatedOpacity(
                        duration: const Duration(milliseconds: 200),
                        opacity: themeService.isDarkModeOn ? 1 : 0,
                        child: const Star()),
                  ),
                  Positioned(
                    top: 40,
                    left: 100,
                    child: AnimatedOpacity(
                        duration: const Duration(milliseconds: 200),
                        opacity: themeService.isDarkModeOn ? 1 : 0,
                        child: const Star()),
                  ),
                  Positioned(
                    top: 50,
                    left: 50,
                    child: AnimatedOpacity(
                        duration: const Duration(milliseconds: 200),
                        opacity: themeService.isDarkModeOn ? 1 : 0,
                        child: const Star()),
                  ),
                  Positioned(
                    top: 100,
                    right: 200,
                    child: AnimatedOpacity(
                        duration: const Duration(milliseconds: 200),
                        opacity: themeService.isDarkModeOn ? 1 : 0,
                        child: const Star()),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: AnimatedPadding(
                      duration: Duration(seconds: 1),
                      padding: EdgeInsets.only(
                          top: themeService.isDarkModeOn ? 300 : 10, right: 20),
                      child: AnimatedOpacity(
                        opacity: !themeService.isDarkModeOn ? 1 : 0,
                        duration: const Duration(milliseconds: 300),
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.yellow.withOpacity(0.7),
                          ),
                        ),
                      ),
                    ),
                  ),
                  AnimatedPadding(
                    duration: Duration(seconds: 1),
                    padding: EdgeInsets.only(
                        top: !themeService.isDarkModeOn ? 300 : 10, left: 20),
                    child: AnimatedPositioned(
                      duration: const Duration(milliseconds: 400),
                      top: themeService.isDarkModeOn ? 100 : 130,
                      right: themeService.isDarkModeOn ? 100 : -10,
                      child: AnimatedOpacity(
                          duration: const Duration(milliseconds: 300),
                          opacity: themeService.isDarkModeOn ? 1 : 0,
                          child: const Moon()),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 220,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: themeService.isDarkModeOn
                              ? Color.fromARGB(255, 56, 51, 51)
                              : Color.fromARGB(255, 145, 143, 143)),
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(children: [
                            Text(
                              !themeService.isDarkModeOn
                                  ? 'To light mode'
                                  : 'To dark mode',
                              style: TextStyle(
                                fontSize: 23,
                                color: themeService.isDarkModeOn
                                    ? Colors.white
                                    : Colors.black,
                              ),
                            ),
                            Text(
                              !themeService.isDarkModeOn
                                  ? 'let the sun rise '
                                  : 'let it  be night',
                              style: TextStyle(
                                fontSize: 23,
                                color: themeService.isDarkModeOn
                                    ? Colors.white
                                    : Colors.black,
                              ),
                            ),
                            Switch(
                              value: themeService.isDarkModeOn,
                              onChanged: (value) {
                                Provider.of<ThemeService>(context,
                                        listen: false)
                                    .toggleTheme();
                              },
                            )
                          ]),
                        ),
                      ),
                    ),
                  )
                ]),
              ),
            );
          },
        ),
      ),
    );
  }
}
