import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questao.dart';
import 'package:projeto_perguntas/resposta.dart';

class Questionario extends StatelessWidget {
  final List<Map<String, Object>>? perguntas;
  final int? perguntaSelecionada;
  final void Function(int)? quandoResponder;

  const Questionario(
      {required this.perguntas,
      required this.perguntaSelecionada,
      required this.quandoResponder,
      Key? key})
      : super(key: key);

  bool get temPerguntaSelecionada {
    return perguntaSelecionada! < perguntas!.length;
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Questao(perguntas![perguntaSelecionada!]['pergunta'].toString()),
      ListView(
          children: temPerguntaSelecionada
              ? perguntas![perguntaSelecionada!]
                  .cast()['respostas']
                  .map<Widget>((resp) => Resposta(resp['texto'].toString(),
                      () => quandoResponder!(resp['pontuacao'])))
                  .toList()
              : [],
          shrinkWrap: true)
    ]);
  }
}
