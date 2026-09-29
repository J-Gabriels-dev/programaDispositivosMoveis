import 'package:flutter/material.dart';

class MyHomePage2 extends StatelessWidget {
  const MyHomePage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Aula de hoje", style: TextStyle(fontSize: 18)),
                  Text("Widget e Composição", style: TextStyle(fontSize: 18)),
                  Text("Aula de ontem", style: TextStyle(fontSize: 18)),
                  ElevatedButton(onPressed: () {}, child: Text("Clique")),
                ],
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(
                  child: SizedBox(
                    height: 120,
                    width: 120,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Icon(Icons.book), Text("Aulas"), Text("12")],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
