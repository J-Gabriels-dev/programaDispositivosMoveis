import 'package:aula_01_flutter/features/chat/domain/entities/conversa.dart';

sealed class ConversaListEvent {}

class ConversaListInitializer extends ConversaListEvent {}

class ConversaListDuplicaConversa extends ConversaListEvent {
  final Conversa conversa;
  ConversaListDuplicaConversa({required this.conversa})
}
