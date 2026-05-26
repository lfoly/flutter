import 'package:flutter/material.dart';

class Creditos extends StatelessWidget {
  const Creditos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Tela de Créditos")),
      body: const Padding(
        padding: EdgeInsets.only(top: 200, bottom: 200),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Desenvolvedor: Leandro Foly"),
              Text("Copyright 2022 LeFoly Sistemas"),
              Text("Todos os direitos reservados"),
            ],
          ),
        ),
      ),
    );
  }
}
