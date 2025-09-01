import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Static Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 80, 2, 104),
      ),
      body: Center(
          child: Image(
          image: AssetImage('assets/obito.jpeg'),
          width: 100,
          height: 100,
          fit: BoxFit.cover,
  
     ),
      ),

      bottomNavigationBar: BottomAppBar(
        color: Color.fromARGB(255, 80, 2, 104),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'Static Footer Text',
            style: TextStyle(
            color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}