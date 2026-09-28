import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Meu primeiro app")),
      body: Container(color: Colors.blueGrey),
      floatingActionButton: OutlinedButton(
        onPressed: () => {},
        child: Icon(Icons.add, color: Colors.black26),
      ),
    );
  }
}
