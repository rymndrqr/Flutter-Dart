import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<String> fruits = [ 'Apple', 'Banana', 'Cherry', 'Date', 'Elderberry' ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Fruit List'),
        ),
        body: ListView.builder(
          itemCount: fruits.length,
          itemBuilder: (context, index){
            final fruit = fruits[index];
            return Card(
              margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: ListTile(
                leading: const Icon(Icons.local_grocery_store),
                title: Text(fruit),
                subtitle: Text('Item Number: ${index + 1}'),
                onTap: () {
                  final messenger = ScaffoldMessenger.of(context);
                  messenger.hideCurrentSnackBar();  // Hide any current SnackBar immediately
                  messenger.showSnackBar(
                    SnackBar(content: Text('You tapped on $fruit')),
                  );
                }
              ),
            );
          }
        ),
      ),
    );
  }
}
