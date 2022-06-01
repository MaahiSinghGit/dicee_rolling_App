import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(child: Text('Dicee')),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int left = 1;
  int right = 2;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              // () {} anonymous function
              onPressed: () {
                setState(() {
                  //random generate non negative number form 0 to range max
                  //syntax nextInt(int max);
                  left=Random().nextInt(6)+1;
                });
              },
              child: Image.asset('Images/dice$left.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              // () {} is a anonymous function
              onPressed: () {
                setState(() {
                  right= Random().nextInt(6)+1;
                });
              },
              child: Image.asset('Images/dice$right.png'),
            ),
          ),
        ],
      ),
    );
  }
}
