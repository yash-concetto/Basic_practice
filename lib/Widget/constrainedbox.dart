import 'package:flutter/material.dart';

class ConstrainedBoxexmple extends StatelessWidget {
  const ConstrainedBoxexmple({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ConstrainedExample"),
        backgroundColor: Colors.cyan,
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints.expand(height: 200,width: 200),
          child: Text(
            'edndj bdshaud ssnkdmvdi cdh v csvdk chbv ikdabckm cshn cvh hb dj jcnj jkdokmv k jsv d  ckjsk,v cndfj '
          ,style: TextStyle(fontSize: 20,color: Colors.red),
          ),
        ),
      ),
    );
  }
}
