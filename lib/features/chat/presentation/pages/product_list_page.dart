import 'package:flutter/material.dart';

class ProductListPage extends StatelessWidget {
  const ProductListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    
      body: ListView(
      
        children: [
          ListTile(
            
            leading: Image.network("https://http2.mlstatic.com/D_Q_NP_890401-MLA119458443723_102026-F.webp",
            width: 100,
            height: 250,
            fit: BoxFit.cover,),
            title: Text("Fone de ouvido Bluetooth"),
            subtitle: Text("100"),
          ),
          ListTile(
            leading: Image.network("https://http2.mlstatic.com/D_Q_NP_862202-MLA113250060952_072026-F.webp",
            width: 100,
            height: 250,
            fit: BoxFit.cover,),
            title: Text("Celular S25"),
            subtitle: Text("2500.00"),
          )
      ]
      ),
    
    );
  }
}