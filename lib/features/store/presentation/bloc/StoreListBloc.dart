import 'package:aula_01_flutter/features/chat/domain/entities/product.dart';
import 'package:aula_01_flutter/features/chat/infra/data/product_repository.dart';
import 'package:aula_01_flutter/features/store/presentation/bloc/store_list_event.dart';
import 'package:aula_01_flutter/features/store/presentation/bloc/store_list_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Storelistbloc extends Bloc<StoreListEvent,StoreListState> {
  final ProductRepository storeRepository = ProductRepository();
  Storelistbloc() : super(StoreListLoading()) {
    on<StoreInitializer>((event, emit) async {
      List<Product> vendas = storeRepository.produtos  ;
      await Future.delayed(const Duration(seconds: 3));

      if (vendas.isNotEmpty) {
        emit(StoreListSucess(vendas));
      } else {
        emit(StoreFailure("Sem dados"));
      }
    });
    
    

  }
}