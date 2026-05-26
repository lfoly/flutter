import 'package:flutter/material.dart';
//import 'tela1.dart';
//import 'tela2.dart';
//import 'tela3.dart';
import 'tela4.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Exemplo Inicial Simples",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
        appBarTheme: AppBarTheme(backgroundColor: Colors.amber),
      ),
      home: Tela4(),
    );
  }
}
