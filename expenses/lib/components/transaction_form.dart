import 'package:flutter/material.dart';

class TransactionForm extends StatelessWidget {
  final titleController = TextEditingController();
  final valueController = TextEditingController();

  final void Function(String, double) onSubmit;

  TransactionForm(this.onSubmit, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              TextField(
                  decoration: InputDecoration(labelText: 'Título'),
                  controller: titleController),
              TextField(
                  decoration: InputDecoration(labelText: 'Valor (R\$)'),
                  controller: valueController),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      child: Text('Nova Transação'),
                      onPressed: () {
                        onSubmit(titleController.text,
                            double.tryParse(valueController.text) ?? 0.0);
                      },
                      style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.purple))),
                ],
              )
            ],
          ),
        ));
  }
}
