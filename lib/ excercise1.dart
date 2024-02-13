import 'package:flutter/material.dart';

class AppBarExample extends StatefulWidget {
  AppBarExample({super.key});

  String? displayValue;
  String? resultValue;

  @override
  State<AppBarExample> createState() => _AppBarExampleState();
}

class _AppBarExampleState extends State<AppBarExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      primary: true,
      appBar: AppBar(
        backgroundColor: Colors.red,
        leading: Icon(Icons.calendar_month, color: Colors.white),
        title: Text('Calculater'),
        actions: <Widget>[
          Icon(Icons.minimize, color: Colors.white),
          Icon(Icons.crop_square_rounded, color: Colors.white),
          Icon(Icons.close, color: Colors.white),
          // IconButton(
          //   icon: const Icon(Icons.search_rounded,color: Colors.white),
          //   tooltip: 'Show Snackbar',
          //   onPressed: () {
          //     ScaffoldMessenger.of(context).showSnackBar(
          //         const SnackBar(content: Text('This is a snackbar')));
          //   },
          // ),
        ],
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(children: [
            // Padding(padding: EdgeInsets.all(50)),
            Text(
              widget.resultValue ?? '',
              style: TextStyle(fontSize: 30),
            ),
            Text(
              widget.displayValue ?? '',
              style: TextStyle(fontSize: 100),
            ),
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                      height: 70,
                      width: 90,
                      child: ElevatedButton(
                          onPressed: () => printThis("%"),
                          child: Text(
                            "%",
                          ))),
                  Padding(padding: EdgeInsets.all(5)),
                  SizedBox(
                      height: 70,
                      width: 90,
                      child: ElevatedButton(
                          onPressed: () => printThis("1/x"),
                          child: Text("1/x"))),
                  Padding(padding: EdgeInsets.all(5)),
                  SizedBox(
                      height: 70,
                      width: 90,
                      child: ElevatedButton(
                          onPressed: () => printThis("7"), child: Text("7"))),
                  Padding(padding: EdgeInsets.all(5)),
                  SizedBox(
                      height: 70,
                      width: 90,
                      child: ElevatedButton(
                          onPressed: () => printThis("4"), child: Text("4"))),
                  Padding(padding: EdgeInsets.all(5)),
                  SizedBox(
                      height: 70,
                      width: 90,
                      child: ElevatedButton(
                          onPressed: () => printThis("1"), child: Text("1"))),
                  Padding(padding: EdgeInsets.all(5)),
                  SizedBox(
                      height: 70,
                      width: 90,
                      child: ElevatedButton(
                          onPressed: () => printThis("+/-"),
                          child: Text("+/-"))),
                  Padding(padding: EdgeInsets.all(5)),
                ],
              ),
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                      height: 70,
                      width: 90,
                      child: ElevatedButton(
                          onPressed: () => printThis("CE"),
                          child: Text(
                            "CE",
                          ))),
                  Padding(padding: EdgeInsets.all(5)),
                  SizedBox(
                      height: 70,
                      width: 90,
                      child: ElevatedButton(
                          onPressed: () => printThis("x^2"),
                          child: Text("x^2"))),
                  Padding(padding: EdgeInsets.all(5)),
                  SizedBox(
                      height: 70,
                      width: 90,
                      child: ElevatedButton(
                          onPressed: () => printThis("8"), child: Text("8"))),
                  Padding(padding: EdgeInsets.all(5)),
                  SizedBox(
                      height: 70,
                      width: 90,
                      child: ElevatedButton(
                          onPressed: () => printThis("5"), child: Text("5"))),
                  Padding(padding: EdgeInsets.all(5)),
                  SizedBox(
                      height: 70,
                      width: 90,
                      child: ElevatedButton(
                          onPressed: () => printThis("2"), child: Text("2"))),
                  Padding(padding: EdgeInsets.all(5)),
                  SizedBox(
                      height: 70,
                      width: 90,
                      child: ElevatedButton(
                          onPressed: () => printThis("0"), child: Text("0"))),
                  Padding(padding: EdgeInsets.all(5)),
                ],
              ),
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                      height: 70,
                      width: 90,
                      child: ElevatedButton(
                          onPressed: () => printThis("C"),
                          child: Text(
                            "C",
                          ))),
                  Padding(padding: EdgeInsets.all(5)),
                  SizedBox(
                      height: 70,
                      width: 90,
                      child: ElevatedButton(
                          onPressed: () => printThis("1/x"),
                          child: Text("1/x"))),
                  Padding(padding: EdgeInsets.all(5)),
                  SizedBox(
                      height: 70,
                      width: 90,
                      child: ElevatedButton(
                          onPressed: () => printThis("9"), child: Text("9"))),
                  Padding(padding: EdgeInsets.all(5)),
                  SizedBox(
                      height: 70,
                      width: 90,
                      child: ElevatedButton(
                          onPressed: () => printThis("6"), child: Text("6"))),
                  Padding(padding: EdgeInsets.all(5)),
                  SizedBox(
                      height: 70,
                      width: 90,
                      child: ElevatedButton(
                          onPressed: () => printThis("3"), child: Text("3"))),
                  Padding(padding: EdgeInsets.all(5)),
                  SizedBox(
                      height: 70,
                      width: 90,
                      child: ElevatedButton(
                          onPressed: () => printThis("."),
                          child: Text("."))),
                  Padding(padding: EdgeInsets.all(5)),
                ],
              ),
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                      height: 70,
                      width: 90,
                      child: ElevatedButton(
                          onPressed: () => printThis("/"),
                          child: Text(
                            "/",
                          ))),
                  Padding(padding: EdgeInsets.all(5)),
                  SizedBox(
                      height: 70,
                      width: 90,
                      child: ElevatedButton(
                          onPressed: () => printThis("*"), child: Text("*"))),
                  Padding(padding: EdgeInsets.all(5)),
                  SizedBox(
                      height: 70,
                      width: 90,
                      child: ElevatedButton(
                          onPressed: () => printThis("-"), child: Text("-"))),
                  Padding(padding: EdgeInsets.all(5)),
                  SizedBox(
                      height: 140,
                      width: 90,
                      child: ElevatedButton(
                          onPressed: () => printThis("+"), child: Text("+"))),
                  Padding(padding: EdgeInsets.all(5)),
                  SizedBox(
                      height: 70,
                      width: 90,
                      child: ElevatedButton(
                          onPressed: () => printThis("="), child: Text("="))),
                  Padding(padding: EdgeInsets.all(5)),
                ],
              ),
            ),
          ]),
        ],
      )),
    );
  }

  double var1 = 0.0;
  double var2 = 0.0;
  List<String> oprater = [];
  List<num> store1 = [];

  void printThis(String s) {
    setState(() {
      widget.resultValue = (widget.resultValue ?? "") + s;
    });
    if
    (s == "+" || s == "-" || s == "*" || s == "/") {
      var1 = num.parse(widget.displayValue ?? "0").toDouble();
      oprater.add(s);
      store1.add(var1);
      widget.displayValue = "";
    } else if (s == "=") {
      var2 = num.parse(widget.displayValue ?? "0").toDouble();
      oprater.add(s);
      store1.add(var2);
      //[10,15,25]
      //[+,+]
      ///i=0
      ///var4=25
      ///var5=50
      ///i=1
      ///value=15
      ///value1=25
      ///var4=40
      ///var5=65
      for(int i= 0 ; i < store1.length-1 ;i++) {
        var1 = store1[i].toDouble();
        String opp = oprater[i];
        var2 = store1[i + 1].toDouble();
        print("value::$var1");
        print("opp::$opp");
        print("value1::$var2");

        var var3 = calculate(var1, var2, opp);
        store1[i + 1] = var3;
        print("ans sholuld $var3");
        setState(() {
          widget.displayValue = "$var3";
          if((widget.displayValue ?? "").endsWith(".0")){
            widget.displayValue = "${var3.toInt()}";
          }
        });
      }



    }else {
      setState(() {
        widget.displayValue = (widget.displayValue ?? "") + s;
      });
    }
    if(s == "CE"){
    widget.displayValue = "";
    widget.resultValue = "";
    store1.clear() ;
    oprater.clear();
    }
  }

  double calculate(double var1, double var2, String opp) {
    double var3 = 0;
    switch (opp) {
      case "+":
        // var4 = stor1;
        var3 = var1 + var2 ;
        return var3;
      case "-":
        var3 = var1 - var2;
        return var3;
      case "*":
        var3 = var1 * var2;
        return var3;
      case "/":
        if (var2 != 0) {
          var3 = var1 / var2;
          return var3;
        } else {
          print("Error: Cannot divide by zero");
          return double.nan;
        }
      default:
        return var1;
    }
  }
}
