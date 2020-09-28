import 'dart:math';
import 'package:flutter/material.dart';


void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.red,
          appBar: AppBar(
            title: Text('ASK ME ANYTHING'),
            backgroundColor: Colors.black,
          ),
        body: BallPage(),
        ),
      ),
);

class BallPage extends StatefulWidget {
  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
    int ballNumber = 1;
  void changeBall(){
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(
          children: [
            Expanded(
            child:FlatButton(
              onPressed: (){
                setState(() {
                      changeBall();
                });
            },
              child: Image.asset('images/ball$ballNumber.png'),


            ),
            ),
          ],
        ),
    );
  }
}

