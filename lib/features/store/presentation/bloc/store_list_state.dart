import 'package:aula_01_flutter/features/chat/domain/entities/product.dart';

sealed class StoreListState {}


class StoreListLoading extends StoreListState{}


class StoreFailure extends StoreListState{
  final String msg;


  StoreFailure(this.msg);
}

class StoreListSucess extends StoreListState {
  final List<Product> produtos;


  StoreListSucess(this.produtos);
}