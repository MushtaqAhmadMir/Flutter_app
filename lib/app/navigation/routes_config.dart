// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_app/app/navigation/constants.dart';
import 'package:my_app/app/screens/allbuttons/allbutton.dart';
import 'package:my_app/app/screens/cart.dart';
import 'package:my_app/app/screens/column_padding.dart';
import 'package:my_app/app/screens/homescreen/homescreen.dart';
import 'package:my_app/app/screens/listview.dart';

class MyAppRouter {
  
  GoRouter router = GoRouter(
    redirect: (context, state) {
      return null;
    
      
    },
    routes: [
      GoRoute(
        path: '/',
        name: MyAppConstants.Home,
        pageBuilder: (context, state) {
          return MaterialPage(child: HomeScreen());
        },
      ),
      GoRoute(
        path: '/columnPadding',
        name: MyAppConstants.Column,
        pageBuilder: (context, state) {
          return MaterialPage(child: ColumnPadding());
        },
      ),
      GoRoute(
        path: '/allbuttons',
        name: MyAppConstants.Buttons,
        pageBuilder: (context, state) {
          return MaterialPage(child: Buttons());
        },
      ),
      GoRoute(
        path: '/cart',
        name: MyAppConstants.Cart,
        pageBuilder: (context, state) {
          return MaterialPage(child: Cart());
        },
      ),
      GoRoute(
        path: '/listview:name',
        name: MyAppConstants.Listview,
        pageBuilder: (context, state) {
          return MaterialPage(
            child: ListViewExample(name: state.params['name']!,)
            );
        },
      )
    ],
  );
}
