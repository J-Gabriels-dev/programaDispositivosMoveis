import 'package:flutter/material.dart';

class ChatLisPage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Minhas conversas"),
        backgroundColor: Colors.green,
      ),

      body: ListView(
        children: [
          ListTile(
            title: Text("Gabriel"),
            subtitle: Text("Enviou uma figurinha"),
            leading: CircleAvatar(child: Text("GS")),
            trailing: Column(children: [Text("2+"), Icon(Icons.add_business)]),
          ),
        ],
      ),
    );
  }
}
