import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ShoppingListScreen(),
    );
  }
}

class ShoppingListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.tealAccent.withOpacity(0.5),
        title: Text('My Shopping List'),
        actions: [
          IconButton(
            
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              showSnackbar(context, 'Cart is empty');
            },
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          ListTile(
            leading: Icon(Icons.shopping_basket),
            title: Text('Apples'),
          ),
          ListTile(
            leading: Icon(Icons.shopping_basket),
            title: Text('Milk'),
          ),
          ListTile(
            leading: Icon(Icons.shopping_basket),
            title: Text('Bread'),
          ),
          ListTile(
            leading: Icon(Icons.shopping_basket),
            title: Text('Eggs'),
          ),
          ListTile(
            leading: Icon(Icons.shopping_basket),
            title: Text('Chicken'),
          ),
        ],
      ),
    );
  }

  void showSnackbar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }
}
