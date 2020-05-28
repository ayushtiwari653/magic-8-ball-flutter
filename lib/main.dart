import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Myapp(),
      ),
    );

class Myapp extends StatefulWidget {
  @override
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  int pic_number = 1;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ask Me Anything"),
        backgroundColor: Colors.blue[800],
      ),
      backgroundColor: Colors.blue,
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: double.infinity,
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  pic_number = Random().nextInt(5) + 1;
                });
              },
              child: Image.asset("images/ball$pic_number.png"),
            ),
          )
        ],
      ),
    );
  }
}
