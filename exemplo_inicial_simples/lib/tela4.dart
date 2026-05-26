import 'package:flutter/material.dart';

class Tela4 extends StatefulWidget {
  const Tela4({super.key});

  @override
  State<Tela4> createState() => _Tela4State();
}

class _Tela4State extends State<Tela4> {
  TextEditingController nota1Ctrl = TextEditingController();
  TextEditingController nota2Ctrl = TextEditingController();
  double media = 0;
  String resultado = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(50),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextField(
                controller: nota1Ctrl,
                decoration: const InputDecoration(labelText: "Nota 1"),
              ),
              TextField(
                controller: nota2Ctrl,
                decoration: const InputDecoration(labelText: "Nota 2"),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    media =
                        (double.parse(nota1Ctrl.text) +
                            double.parse(nota2Ctrl.text)) /
                        2;
                    resultado = "$media";
                  });
                },
                child: Text("Calcular Média"),
              ),
              Text("Dados digitados: $media"),
            ],
          ),
        ),
      ),
    );
  }
}
