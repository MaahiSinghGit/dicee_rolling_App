import 'package:flutter/material.dart';

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

class DicePage extends StatelessWidget {
  const DicePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: () {
                print('Left button clicked');
              },
              child: Image.asset('Images/dice1.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                print('Rigth button clicked');
              },
              child: Image.asset('Images/dice1.png'),
            ),
          ),
        ],
      ),
    );
  }
}
