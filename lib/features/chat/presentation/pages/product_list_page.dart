import 'package:flutter/material.dart';

class ProductListPage extends StatelessWidget {
   ProductListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text(
          "Catálogo de Produtos ",
          style: TextStyle(color: Colors.white),
        ),
        // Garante que o ícone do carrinho acompanhe a cor branca
        iconTheme:  IconThemeData(color: Colors.white),
        actions:  [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Icon(Icons.shopping_bag_outlined),
          ),
        ],
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: ListView(
        children: [
          
          ListTile(
          
            minLeadingWidth: 0,
            leading: Image.network(
              "https://http2.mlstatic.com/D_Q_NP_890401-MLA119458443723_102026-F.webp",
              width: 80, // Reduzido para encaixar de forma limpa na linha
              height: 80, // Ajustado para evitar o espaçamento vertical gigante
              fit: BoxFit.cover,
            ),
            title:  Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Fone bluetooth",style: TextStyle(fontWeight: FontWeight.bold) ),
              ],
            ),
            subtitle:  Column(

              crossAxisAlignment: CrossAxisAlignment.start,

              children: <Widget>[
                Text("Tecnologia", style: TextStyle(color: Colors.grey)),               
                Row(
                  children: <Widget>[
      
                    Text(
                  "R\$ 200",
                  style: TextStyle(
                    color: Colors.deepPurple,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  )),
                    SizedBox(width: 20,),
                    Icon(Icons.star,color: Colors.amberAccent,),
                    SizedBox(width: 10,),
                    Text("4,6",style: TextStyle(color: Colors.blueGrey, 
                    fontSize: 18,
                    fontWeight: FontWeight.bold,))
                  ],
                ),
                
              ],
            ),
            trailing: Icon(Icons.arrow_forward_ios_outlined)
          ),
          ListTile(
            minLeadingWidth: 0,
            leading: Image.network(
              "https://http2.mlstatic.com/D_Q_NP_862202-MLA113250060952_072026-F.webp",
              width: 80,
              height: 80,
              fit: BoxFit.cover,
            ),
            title:  Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Fone bluetooth",style: TextStyle(fontWeight: FontWeight.bold),
                 ),
              ],
            ),
            subtitle:  Column(

              crossAxisAlignment: CrossAxisAlignment.start,

              children: <Widget>[
                Text("Tecnologia", style: TextStyle(color: Colors.grey)),               
                Row(
                  children: <Widget>[
      
                    Text(
                  "R\$ 2.566",
                  style: TextStyle(
                    color: Colors.deepPurple,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  )),
                    SizedBox(width: 20,),
                    Icon(Icons.star,color: Colors.amberAccent,),
                    SizedBox(width: 10,),
                    Text("4,6",style: TextStyle(color: Colors.blueGrey  , 
                    fontSize: 18,
                    fontWeight: FontWeight.bold,),)
                  ],
                ),
              ],
            ),
            trailing: Icon(Icons.arrow_forward_ios_outlined),
          ),
        ],
      ),
    );
  }
}
