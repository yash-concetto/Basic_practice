import 'package:flutter/material.dart';
import 'package:practic/Database/Screen/loginscreen.dart';
import 'package:practic/Widget/cardWidget.dart';
import 'package:practic/Widget/constrainedbox.dart';
import 'package:practic/Widget/flexible.dart';
import 'package:practic/Widget/listview.dart';
import 'package:practic/Widget/stack.dart';

import 'Widget/DropdownButtonExample.dart';
import 'Widget/gridView.dart';
import 'Widget/navigationbarexample.dart';


void main() => runApp(const AppBarApp());

class AppBarApp extends StatelessWidget {
  const AppBarApp({super.key});

  @override
  Widget build( context) {
    return  MaterialApp(
      // theme: ThemeData(colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.lightGreen)),
      theme: ThemeData(
        primaryColor: const Color(0xff2F8D46),
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        hoverColor: Colors.transparent,
      ),
      debugShowCheckedModeBanner: false,
      // home: AppBarExample(),
    // home: Stackexample(),
    //   home: ExpandedApp(),
    //   home: FlexibleExample(),
    //   home: CardWidget(),
      // home: ConstrainedBoxexmple(),
      // home: ListviewExample(),
    // home: Gridviewexample(),
    //   home:  DropdownButtonExample(),
    //   home: NavigationbarExample(),
      home: LoginScreen(),
    );
  }
}

