import 'package:flutter/material.dart';

class ListviewExample extends StatefulWidget {
  const ListviewExample({super.key});

  @override
  State<ListviewExample> createState() => _ListviewExampleState();
}

class _ListviewExampleState extends State<ListviewExample> {
  @override
  final List<String> entry = ['one','two','three','four','five','six','seven','eight','nine'];
  final List<int> colorcode = [800,700,600,500,400,300,200,100,50];

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Listview'),
          backgroundColor: Colors.indigo,
          centerTitle: true,
        ),
        // body: ListView(
        //   padding: EdgeInsets.all(10),
        //   children: [
        //     Container(
        //       height: 50,
        //       color: Colors.amber[600],
        //       child: Center(child: Text("one")),
        //     ),
        //     Container(
        //       height: 50,
        //       color: Colors.amber[300],
        //       child: Center(child: Text("two")),
        //     ),
        //     Container(
        //       height: 50,
        //       color: Colors.amber[100],
        //       child: Center(child: Text("three")),
        //     ),
        //   ],
        // )


      body: ListView.builder(
        scrollDirection: Axis.vertical,
        // physics: NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.all(8),
          itemCount: entry.length,
          itemBuilder: (BuildContext context,int index){
            return Container(
              height: 200,
              color: Colors.amber[colorcode[index]],
              child: Center(child: Text("${entry[index]}")),
            );
          }
      ),
    );
  }
}
