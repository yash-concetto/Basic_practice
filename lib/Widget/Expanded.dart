import 'package:flutter/material.dart';

class ExpandedApp extends StatefulWidget {
  const ExpandedApp({super.key});

  @override
  State<ExpandedApp> createState() => _ExpandedAppState();
}

class _ExpandedAppState extends State<ExpandedApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Expanded'),
        ),
        body: Center(
          child: Row(
            children: <Widget>[
              Container(
                color: Colors.blue,
                height: 100,
                width: 100,
              ),
              Expanded(
                child: Container(
                  color: Colors.amber,
                  width: 100,
                  height: 100,
                ),
              ),
              Container(
                color: Colors.blue,
                height: 100,
                width: 100,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
