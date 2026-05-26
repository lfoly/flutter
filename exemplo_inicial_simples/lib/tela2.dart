import 'package:flutter/material.dart';

class Tela2 extends StatelessWidget {
  const Tela2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Exemplo Inicial Simples")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Exemplo de Botão", style: TextStyle(fontSize: 24)),
            ElevatedButton(
              onPressed: () {
                var snackBar = SnackBar(content: Text('Exemplo de snackBar'));
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              child: Text("Clique-me"),
            ),
          ],
        ),
      ),
    );
  }
}
