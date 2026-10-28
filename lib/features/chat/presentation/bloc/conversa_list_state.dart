import 'package:aula_01_flutter/features/chat/domain/entities/conversa.dart';

sealed class ConversaListState {}

class ConversaLisLoading extends ConversaListState {}

class ConversaListFailure extends ConversaListState {
  final String msg;
  ConversaListFailure({required this.msg});
}

class ConversaListSucess extends ConversaListState {
  final List<Conversa> conversas;

  ConversaListSucess({required this.conversas});
}
