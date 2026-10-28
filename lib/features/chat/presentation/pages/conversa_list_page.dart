import 'package:aula_01_flutter/features/chat/domain/entities/conversa.dart';
import 'package:aula_01_flutter/features/chat/infra/data/conversa_repository.dart';
import 'package:aula_01_flutter/features/chat/presentation/bloc/conversa_list_bloc.dart';
import 'package:aula_01_flutter/features/chat/presentation/bloc/conversa_list_event.dart';
import 'package:aula_01_flutter/features/chat/presentation/bloc/conversa_list_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ConversaListPage extends StatelessWidget {
  const ConversaListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ConversaListBloc()..add(ConversaListInitializer()),
      child: Scaffold(
        appBar: AppBar(title: const Text('Conversas')),
        body: BlocBuilder<ConversaListBloc, ConversaListState>(
          builder: (context, state) {
            if (state is ConversaListSucess) {
              return ListView.builder(
                itemCount: state.conversas.length,
                itemBuilder: (context, index) {
                  final conversa = state.conversas[index];
                  return ListTile(
                    onTap: () {
                      context.read<ConversaListBloc>().add(
                        ConversaListDuplicaConversa(conversa: conversa),
                      );
                    },
                    leading: CircleAvatar(child: Text(conversa.sigla)),
                    title: Text(conversa.contato),
                    subtitle: Text(conversa.ultimaMsg),
                    trailing: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(conversa.hora),
                        if (conversa.naoLidas > 0)
                          CircleAvatar(
                            radius: 10,
                            child: Text(
                              conversa.naoLidas.toString(),
                              style: const TextStyle(fontSize: 12),
                            ),
                          ),
                      ],
                    ),
                  );
                },
              );
            }
            if (state is ConversaListFailure) {
              return Center(child: Text(state.msg));
            }
            return const Center(child: CircularProgressIndicator());
          },
        ),
      ),
    );
  }
}
