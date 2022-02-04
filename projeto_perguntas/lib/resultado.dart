import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() quandoReiniciarQuestionario;

  const Resultado(this.pontuacao, this.quandoReiniciarQuestionario, {Key? key})
      : super(key: key);

  String get fraseResultado {
    if (pontuacao < 8) {
      return 'Parabéns!';
    } else if (pontuacao < 12) {
      return 'Você é bom!';
    } else if (pontuacao < 16) {
      return 'Impressionante!';
    } else {
      return 'Nível Jedi!';
    }
  }

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
            child: Text(fraseResultado, style: const TextStyle(fontSize: 28))),
        TextButton(
            child: const Text('Reiniciar?', style: TextStyle(fontSize: 18)),
            style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.blue)),
            onPressed: quandoReiniciarQuestionario)
      ],
    );
  }
}
