import 'package:aula_01_flutter/features/chat/domain/entities/product.dart';
import 'package:aula_01_flutter/features/store/presentation/bloc/StoreListBloc.dart';
import 'package:aula_01_flutter/features/store/presentation/bloc/store_list_event.dart';
import 'package:aula_01_flutter/features/store/presentation/bloc/store_list_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductListPage extends StatelessWidget {
   const ProductListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
          create: (context) => Storelistbloc()..add(StoreInitializer()),
          child: Scaffold(
            appBar: AppBar(
               title:  Text(
                "Produtos ",
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
        body: BlocBuilder<Storelistbloc,StoreListState>(
          builder:(context,state) {
            if (state is StoreListSucess){
              return ListView.builder(
                itemCount: state.produtos.length,
                itemBuilder: (context, index) {
                  final Product produtos = state.produtos[index];
                   return Card(
                      child:  
                      ListTile(
                        minLeadingWidth: 0,
                        leading: Image.network(
                          produtos.urLimagem,
                          width: 80,
                          height: 80,
                          fit: BoxFit.cover,
                        ),  
                        title: Text(produtos.nome,
                              style: TextStyle(fontWeight: FontWeight.bold)
                        ), 
                        subtitle:  Column(

                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: <Widget>[
                        Text(produtos.categoria, style: TextStyle(color: Colors.grey)),               
                        Row(
                          children: <Widget>[
              
                          Text(
                            produtos.preco.toString(),
                            style: TextStyle(
                            color: Colors.deepPurple,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          )),
                            SizedBox(width: 20,),
                            Icon(Icons.star,color: Colors.amberAccent,),
                            SizedBox(width: 10,),
                            Text(produtos.avaliacao,style: TextStyle(color: Colors.blueGrey, 
                            fontSize: 18,
                            fontWeight: FontWeight.bold,))
                          ],
                        ),
                        
                        ],
                      ),
                    trailing: Icon(Icons.arrow_forward_ios_outlined)
                    ),
              );
            },
          );
        }
        if (state is StoreFailure){
          return Center(child: Text(state.msg));
        }
        return const Center(
          child: CircularProgressIndicator(),
        );
          
            }

        ),
        
      
      )
      /*ListView(
        children: [
          Card(
            child: ListTile(
          
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
          ),
          
         Card(
          child:  ListTile(
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
          ),)
        ],
      ), */
      
    );
  }
}
