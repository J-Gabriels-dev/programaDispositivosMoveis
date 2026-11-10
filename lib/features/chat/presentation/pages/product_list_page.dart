import 'package:flutter/material.dart';

class ProductListPage extends StatelessWidget {
   ProductListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text("Catálogo de Produtos ", style: TextStyle(color: Colors.white)),
        // Garante que o ícone do carrinho acompanhe a cor branca
        iconTheme:  IconThemeData(color: Colors.white),
        actions:  [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Icon(Icons.shopping_bag_outlined),
          )
        ],
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: ListView(
        children: [
          // --- PRODUTO 1 ---
          ListTile(
            minLeadingWidth: 0,
            leading: Image.network(
              "https://http2.mlstatic.com/D_Q_NP_890401-MLA119458443723_102026-F.webp",
              width: 80,  // Reduzido para encaixar de forma limpa na linha
              height: 80, // Ajustado para evitar o espaçamento vertical gigante
              fit: BoxFit.cover,
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  [
                Text("Fone de ouvido Bluetooth", style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
            subtitle: Column(
              // CORREÇÃO: Alinha a categoria e o preço totalmente à esquerda
              crossAxisAlignment: CrossAxisAlignment.start, 
              children:  [
                SizedBox(height: 4), // Pequeno espaço entre o título e a categoria
                Text("Tecnologia", style: TextStyle(color: Colors.grey)),
                SizedBox(height: 4), // Pequeno espaço entre a categoria e o preço
                Text("R\$ 100", style: TextStyle(color: Colors.deepPurple, fontSize: 18, fontWeight: FontWeight.bold)),
              ],
            ),
          ),

           

          // --- PRODUTO 2 ---
          ListTile(
            minLeadingWidth: 0,
            leading: Image.network(
              "https://http2.mlstatic.com/D_Q_NP_862202-MLA113250060952_072026-F.webp",
              width: 80,
              height: 80,
              fit: BoxFit.cover,
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                Text("Celular S25 ", style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
            subtitle: Column(
              // CORREÇÃO: Alinha a categoria e o preço totalmente à esquerda
              crossAxisAlignment: CrossAxisAlignment.start, 
              children:  [
                SizedBox(height: 4),
                Text("Tecnologia", style: TextStyle(color: Colors.grey)),
                SizedBox(height: 4),
                Text("R\$ 2.533", style: TextStyle(color: Colors.deepPurple, fontSize: 18, fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
