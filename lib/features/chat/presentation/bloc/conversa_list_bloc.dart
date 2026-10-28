import 'package:aula_01_flutter/features/chat/domain/entities/conversa.dart';
import 'package:aula_01_flutter/features/chat/infra/data/conversa_repository.dart';
import 'package:aula_01_flutter/features/chat/presentation/bloc/conversa_list_event.dart';
import 'package:aula_01_flutter/features/chat/presentation/bloc/conversa_list_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ConversaListBloc extends Bloc<ConversaListEvent, ConversaListState> {
  final ConversaRepository conversaRepository = ConversaRepository();
  ConversaListBloc() : super(ConversaLisLoading()) {
    on<ConversaListInitializer>((event, emit) async {
      List<Conversa> dados = conversaRepository.conversas;
      await Future.delayed(const Duration(seconds: 1));

      if (dados.isNotEmpty) {
        emit(ConversaListSucess(conversas: dados));
      } else {
        emit(ConversaListFailure(msg: "Sem dados"));
      }
    });
    on<ConversaListDuplicaConversa>((event, emit) async {
      emit(ConversaLisLoading());
      await Future.delayed(Duration(seconds: 02));

      conversaRepository.add(event.conversa);
      emit(ConversaListSucess(conversas: conversaRepository.conversas));
    });
  }
}
