import 'package:flutter/material.dart';
import 'bibliteca.dart';

void main() {
  runApp(const Exemplo1());
}

class Exemplo1 extends StatelessWidget {
  const Exemplo1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: meuScaffold());
  }
}
