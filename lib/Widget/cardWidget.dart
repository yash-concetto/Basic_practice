import 'package:flutter/material.dart';
import 'package:practic/Widget/listview.dart';

class CardWidget extends StatefulWidget {
  const CardWidget({super.key});

  @override
  State<CardWidget> createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cardscreen'),
        backgroundColor: Colors.greenAccent[400],
        centerTitle: true,
      ),
      body: Center(
        child: Card(
          shadowColor: Colors.green,
          elevation: 50,
          color: Colors.greenAccent[100],
          child: SizedBox(
            width: 300,
            height: 500,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.deepPurple,
                    radius: 108,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://as2.ftcdn.net/v2/jpg/05/55/71/83/1000_F_555718315_XAi4cgO4s2uBRshlJZ8wXjAWkptX8023.jpg"),
                      radius: 100,
                    ),
                  ),
              const SizedBox(
                height: 10,
              ), //SizedBox
              Text(
                'cardScreen',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.green[900],
                  fontWeight: FontWeight.w500,
                ), //Textstyle
              ), //Text
              const SizedBox(
                height: 10,
              ), //SizedBox
              const Text(
                'kccbm  icuk cdhjn hj nckhnmxncoi x ndokv khkc dh fvurnn nchvj ncj djdkn ifjekdjkm cn ikn feu nmdnjk cd nfbujk nbn fjkm xoll,!!',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.green,
                ), //Textstyle
              ), //Text
              const SizedBox(
                height: 10,
              ), //SizedBox
              SizedBox(
                width: 100,
                child: ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                            content:
                            Row(
                              children: [
                            Icon(Icons.fmd_good),
                             Text("welcome flutter")]),
                        action: SnackBarAction(
                          label: 'Action',
                          onPressed: (){

                          },
                        ),
                        ));
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ListviewExample()));
                  },
                  style: ButtonStyle(
                      backgroundColor:
                      MaterialStateProperty.all(Colors.green)),
                  child: Padding(
                    padding: const EdgeInsets.all(4),

                  ),
                ),
              ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
