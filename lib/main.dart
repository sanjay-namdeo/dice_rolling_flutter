import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Dice Rolling',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
          ),
        ),
        body: DicePage(),
      ),
    ));

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceValue = 1;
  int rightDiceValue = 1;

  updateValues() {
    setState(() {
      leftDiceValue = Random().nextInt(6) + 1;
      rightDiceValue = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice$leftDiceValue.png'),
              onPressed: () {
                updateValues();
              },
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice$rightDiceValue.png'),
              onPressed: () {
                updateValues();
              },
            ),
          ),
        ],
      ),
    );
  }
}
