import 'package:flutter/material.dart';
import 'package:practic/flexible.dart';
import 'package:practic/stack.dart';
import ' excercise1.dart';
import 'Expanded.dart';
import 'testDemo/example.dart';

/// Flutter code sample for [AppBar].

void main() => runApp(const AppBarApp());

class AppBarApp extends StatelessWidget {
  const AppBarApp({super.key});

  @override
  Widget build( context) {
    return  MaterialApp(
      theme: ThemeData(colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.lightGreen)),
      debugShowCheckedModeBanner: false,
      // home: AppBarExample(),
    // home: Stackexample(),
    //   home: ExpandedApp(),
      home: FlexibleExample(),
    );
  }
}

