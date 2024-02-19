
import 'dart:io';

import 'package:flutter/material.dart';

class Example extends StatefulWidget {
  const Example({super.key});

  @override
  State<Example> createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 100,
            width: 100,
            color: Colors.red,
            child: Image.asset(
              'assets/demo.jpg',
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.red,
            child: Image.network(
              'https://upload.wikimedia.org/wikipedia/commons/9/96/Nature_celebrating_India.png',
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.red,
            child: Image.file(File('"E:/festivalposterrepo/FestivalPoster/assets/image/digital1.png"')),
          ),
          Icon(Icons.add_call),
         Text("Demo", style: TextStyle(fontSize: 50,fontFamily: "assets/fontdemo"))
        ],
      ),
    );
  }
}
