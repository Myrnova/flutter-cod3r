import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final void Function() quandoSelecionado;

  const Resposta(this.texto, this.quandoSelecionado, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
        width: double.infinity,
        child: ElevatedButton(
            child: Text(texto),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),

                /// The color for the button's [Text] and [Icon] widget descendants.
                /// The color of the [textStyle] is typically not used directly, the [foregroundColor] is used instead.
                foregroundColor:
                    MaterialStateProperty.all<Color>(Colors.yellow.shade50)),
            onPressed: quandoSelecionado));
  }
}
