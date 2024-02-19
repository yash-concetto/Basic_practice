import 'package:flutter/material.dart';

class Stackexample extends StatelessWidget {
  const Stackexample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('appbar'),
          backgroundColor: Colors.greenAccent[400],
        ), //AppBar
        body: Center(
          child: Center(
            child: Stack(
              children: <Widget>[
                Container(
                  width: 600,
                  height: 300,
                  color: Colors.red,
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  child:
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.black,
                  ),
                ), //Container
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: Container(
                    height: 100,
                    width: 100,
                    color: Colors.purple,
                  ),
                ),
                Positioned(
                  right: 150,
                  bottom: 100,
                  child: Container(
                    height: 100,
                    width: 100,
                    color: Colors.yellow,
                  ),
                ),
              ], //<Widget>[]
            ), //Stack
          ), //SizedBox
        ) //Center
        ); //Scaffold
    // bottom: 10,
  }
}
