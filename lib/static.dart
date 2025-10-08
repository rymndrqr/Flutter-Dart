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
          child: Column (
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(children: [
                Image(
                    image: AssetImage('assets/obito.jpeg'),
                    width: 325,
                    height: 325,
                    fit: BoxFit.cover,
                    ),
                    Image(
                    image: AssetImage('assets/obito.jpeg'),
                    width: 275,
                    height: 275,
                    fit: BoxFit.cover,
                  ),
                  Image(
                  image: AssetImage('assets/obito.jpeg'),
                  width: 225,
                  height: 225,
                  fit: BoxFit.cover,
                  ),
                  Image(
                  image: AssetImage('assets/obito.jpeg'),
                  width: 175,
                  height: 175,
                  fit: BoxFit.cover,
                  ),
                  Image(
                    image: AssetImage('assets/obito.jpeg'),
                    width: 125,
                    height: 125,
                    fit: BoxFit.cover,
                    ),
                    Image(
                    image: AssetImage('assets/obito.jpeg'),
                    width: 75,
                    height: 75,
                    fit: BoxFit.cover,
                  ),
              ],),
              Column(
                children: [
                  Row(
                    children: [
                    
                    ],
                  
                  ),
                ],
              ),
            ]
          )
          
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