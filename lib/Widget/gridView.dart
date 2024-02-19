import 'package:flutter/material.dart';

class Gridviewexample extends StatelessWidget {
  const Gridviewexample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gridview'),
        backgroundColor: Colors.indigo,
        centerTitle: true,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: [
          Container(
            color: Colors.amber,
          ),
          Container(
            color: Colors.red,
          ),
          Container(
            color: Colors.black,
          ),
          Container(
            color: Colors.blueAccent,
          ),
          Container(
            color: Colors.deepPurple,
          ),
          Container(
            color: Colors.green,
          ),
          Container(
            color: Colors.teal,
          ),
          Container(
            color: Colors.pink,
          ),
          Container(
            color: Colors.lime,
          ),
          Container(
            color: Colors.amber,
          ),
          Container(
            color: Colors.amber,
          ),
          Container(
            color: Colors.amber,
          ),

        ],
      ),
    );
  }
}
