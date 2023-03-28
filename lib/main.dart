import 'package:flutter/material.dart';
import 'package:my_app/app/screens/animation.dart';
import 'package:my_app/app/screens/cart.dart';
import 'package:my_app/app/screens/home.dart';
import 'package:my_app/app/screens/homescreen/homescreen.dart';
import 'package:my_app/app/screens/responsive.dart';
import 'package:my_app/app/screens/task/task.dart';

import 'package:my_app/app/statemanagement/themeservice.dart';
import 'package:my_app/theme.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    child: MyApp(),
    create: (context) => ThemeService(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeService>(
      builder: (context, themeService, child) {
        return MaterialApp(
          // home: Scaffold(
          //   appBar: AppBar(title: Text('Theme')),
          //   body: Center(
          //     child: Container(
          //       height: 200,
          //       width: 200,
          //       color: themeService.isDarkModeOn
          //           ? Colors.black38
          //           : Colors.amberAccent,
          //           child: IconButton(icon: (Icon(Icons.toggle_off_rounded)),onPressed:()=>{
          //             Provider.of<ThemeService>(context,listen: false).toggleTheme()
          //           }),
          //     ),
          //   ),
          // ),
          debugShowCheckedModeBanner: false,
          // routeInformationParser: MyAppRouter().router.routeInformationParser,
          // routerDelegate: MyAppRouter().router.routerDelegate,
          initialRoute: 'task',
          routes:<String,WidgetBuilder> {
            '/':(BuildContext context) => const HomeScreen(),
            'responsive': (BuildContext context) => const Responsive(),
            'home': (BuildContext context) => const Home(),
            'cart': (BuildContext context) => const Cart(),
            'animation':(BuildContext context) => AnimationExapmle(),
            'task':(context) => Task()
            // 'containerEx': (context) => const ContainerEx(),
            // '/columnPadding': (BuildContext context) => const ColumnPadding(),
            // 'homeScreen':(context) => const HomeScreen(),
            // 'allButtons':(context) => const Buttons(),
            // 'statefull':(context) => const StateFullExample(),
            // 'listview':(context) => const ListViewExample(),
            // 'bottomnavigation':(context) => const BottomNavigationExample()
          },
          // theme: ThemeData(scaffoldBackgroundColor: Colors.yellow)
          theme: themeService.isDarkModeOn
              ? AppTheme.darkTheme
              : AppTheme.lightTheme,
          themeMode: ThemeMode.dark,
        );
      },
    );
  }
}
