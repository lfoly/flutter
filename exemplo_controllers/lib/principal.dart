import 'package:flutter/material.dart';

class Principal extends StatelessWidget {
  const Principal({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Cálculo de Média")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/CalculoMedia");
              },
              child: const Text("Cálculo de Média"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/Creditos");
              },
              child: const Text("Créditos"),
            ),
          ],
        ),
      ),
    );
  }
}
