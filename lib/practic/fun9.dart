// import 'dart:io';
//
// void main() {
//   int n =4;
//
//   for (int i=0; i<=n; i++) {
//     for (int j = 0; j <= n; j++) {
//       for (int k = 0; k <= 0; k++) {
//         stdout.write(" ");
//       }
//       if(i==0 && j == n)
//         stdout.write("*");
//
//       if (i>0 && j >= n-i && j < (n))
//         for (int k = 0; k <= 0; k++) {
//           stdout.write("*");
//           // for (int k = 0; k <= 0; k++) {
//             stdout.write(" ");
//           // }
//           stdout.write("${i}");
//         }
//       else
//         stdout.write(" ");
//
//       if (i > 0 && j > n-2 && j < n)
//         for (int k = 0; k <= 0; k++) {
//           stdout.write(" ");
//           stdout.write("*");
//         }
//     }
//
//     print("");
//   }
//   print('end');
// }


import 'package:flutter/material.dart';
void main() {
  runApp(myApp());
}
class myApp extends StatefulWidget {
  @override
  State<myApp> createState() => _myAppState();
}

class _myAppState extends State<myApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.all(10.0),
                alignment: Alignment.bottomRight,
                child: Text(
                  text,
                  style: TextStyle(
                      fontSize: 60.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.deepOrange),
                ),
              ),
            ),
            Row(
              children: <Widget>[
                customOutlineButton("9"),
                customOutlineButton("8"),
                customOutlineButton("7"),
                customOutlineButton("+"),
              ],
            ),
            Row(
              children: <Widget>[
                customOutlineButton("6"),
                customOutlineButton("5"),
                customOutlineButton("4"),
                customOutlineButton("-"),
              ],
            ),
            Row(
              children: <Widget>[
                customOutlineButton("3"),
                customOutlineButton("2"),
                customOutlineButton("1"),
                customOutlineButton("x"),
              ],
            ),
            Row(
              children: <Widget>[
                customOutlineButton("C"),
                customOutlineButton("0"),
                customOutlineButton("="),
                customOutlineButton("/"),
              ],
            ),
          ],
        ),
      ),
    );
  }
  Widget customOutlineButton(String val) {
    return Expanded(
      child: ElevatedButton(
        // child: Padding(padding: EdgeInsets.all(25.0)),
        onPressed: () => btnClicked(val),
        child: Text(
          val,
          style: TextStyle(fontSize: 35.0, color: Colors.deepOrange),
        ),
      ),
    );
  }
  late int first, second;
  late String res, text = "";
  late String opp;

  void btnClicked(String btnText) {
    if (btnText == "C") {
      res = "";
      text = "";
      first = 0;
      second = 0;
    } else if (btnText == "+" ||
        btnText == "-" ||
        btnText == "x" ||
        btnText == "/") {
      first = int.parse(text);
      res = "";
      opp = btnText;
    } else if (btnText == "=") {
      second = int.parse(text);
      if (opp == "+") {
        res = (first + second).toString();
      }
      if (opp == "-") {
        res = (first - second).toString();
      }
      if (opp == "x") {
        res = (first * second).toString();
      }
      if (opp == "/") {
        res = (first ~/ second).toString();
      }
    } else {
      res = int.parse(text + btnText).toString();
    }
    setState(() {
      text = res;
    });
  }
}