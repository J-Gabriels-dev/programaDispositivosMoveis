import 'package:aula_01_flutter/features/chat/domain/entities/product.dart';

class ProductRepository {
    List<Product> produtos = [
      Product(
        
        nome:"Fone Bluetooth",
        categoria: "tecnologia",
        preco: 233.30,
        avaliacao: "4,6",
        urLimagem: "https://http2.mlstatic.com/D_Q_NP_890401-MLA119458443723_102026-F.webp"
        ),
        
      Product(
        
        nome:"Celular S25",
        categoria: "tecnologia",
        preco: 2333,
        avaliacao: "5,0",
        urLimagem: "https://http2.mlstatic.com/D_Q_NP_862202-MLA113250060952_072026-F.webp"
      )
    ];



     List<Product> all(){
        return produtos;
     }



}