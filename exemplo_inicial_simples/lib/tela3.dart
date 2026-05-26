import 'package:flutter/material.dart';

class Tela3 extends StatefulWidget {
  const Tela3({super.key});

  @override
  State<Tela3> createState() => _Tela3State();
}

class _Tela3State extends State<Tela3> {
  TextEditingController nomeCtrl = TextEditingController();
  TextEditingController emailCtrl = TextEditingController();
  String dadosDigitados = "";

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
                controller: nomeCtrl,
                decoration: const InputDecoration(labelText: "Nome"),
              ),
              TextField(
                controller: emailCtrl,
                decoration: const InputDecoration(labelText: "Email"),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    dadosDigitados = "${nomeCtrl.text}, ${emailCtrl.text}";
                  });
                },
                child: Text("Mostrar dados digitados"),
              ),
              Text("Dados digitados: $dadosDigitados"),
            ],
          ),
        ),
      ),
    );
  }
}
