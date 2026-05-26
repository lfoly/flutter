import "package:flutter/material.dart";

class ExemploSimpleDialog extends StatefulWidget {
  const ExemploSimpleDialog({super.key});

  @override
  State<ExemploSimpleDialog> createState() => _ExemploSimpleDialogState();
}

class _ExemploSimpleDialogState extends State<ExemploSimpleDialog> {
  //void _setValue(String value) => setState(() => _valor = valor);

  var opcaoEscolhida = '';

  void atualizarOpcao(String valor) => setState(() => opcaoEscolhida = valor);

  @override
  Widget build(BuildContext context) {
    Future mostrarMensagem() async {
      opcaoEscolhida = await showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: const Text("Escolha uma opção:"),
            children: [
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, "opcao1");
                },
                child: const Text("Opção 1"),
              ),
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, "opcao2");
                },
                child: const Text("Opção 2"),
              ),
            ],
          );
        },
      );
      atualizarOpcao(opcaoEscolhida);
    }

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                mostrarMensagem();
              },
              child: const Text("Simple Dialog"),
            ),
            Text('Opção Escolhida: $opcaoEscolhida'),
          ],
        ),
      ),
    );
  }
}
