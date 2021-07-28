import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: SafeArea(
          child: (DicePage()),
        ),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
//  const DicePage({Key? key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int dice_no = 1, dice_no2 = 1;
  void update() {
    setState(() {
      //Random.nextInt(n) returns random integer from 0 to n-1
      dice_no = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice$dice_no.png'),
              onPressed: () {
                update();
              },
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  dice_no2 = Random().nextInt(6) + 1;
                });
              },
              child: Image.asset('images/dice$dice_no2.png'),
            ),
          )
        ],
      ),
    );
  }
}

// if 1st one take double space then add flex property

// children: [
// Expanded(
// flex: 2
// child: Image(
// image: AssetImage('images/dice1.png'),
// ),
// ),
// Expanded(
// flex: 1
// child: Image(
// image: AssetImage('images/dice1.png'),
// ),
// )
// ],
