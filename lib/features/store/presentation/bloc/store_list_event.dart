import 'package:aula_01_flutter/features/chat/domain/entities/product.dart';

sealed class StoreListEvent {}



class StoreInitializer extends StoreListEvent{}

class StoreLoading extends StoreListEvent {
  final List<Product> produtos ;

  StoreLoading(this.produtos);
}