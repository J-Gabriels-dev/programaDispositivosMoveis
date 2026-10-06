import 'package:flutter/material.dart';

class MyHomePage2 extends StatelessWidget {
  const MyHomePage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Minha Logo"), backgroundColor: Colors.teal),

      body: Padding(
        padding: EdgeInsets.all(150.0),

        child: Column(
          children: [
            Card(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Aula de hoje", style: TextStyle(fontSize: 18)),

                  SizedBox(height: 30),
                ],
              ),
            ),

            Card(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 180,
                    height: 90,
                    child: Card(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Widget e Composição",
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Card(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Aula de ontem", style: TextStyle(fontSize: 18)),

                  SizedBox(height: 120),
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

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Card(
                      child: SizedBox(
                        height: 120,
                        width: 120,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.add_a_photo),
                            Text("Turmas"),
                            Text("12"),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
