import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Blank Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Home'),
        ),
        body: Column(
          children: [
            // First container: takes 2 parts of available space
            Expanded(
              flex: 2,  // The flex factor is 2
              child: Container(
                color: Colors.amber,
              ),
            ),
            // Second container: takes 1 part of available space
            Expanded(
              flex: 1,  // The flex factor is 1
              child: Container(
                color: Colors.green,
              ),
            ),
            // Third container: takes 3 parts of available space
            Expanded(
              flex: 3,  // The flex factor is 3
              child: Container(
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
