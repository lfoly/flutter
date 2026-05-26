import 'package:flutter/material.dart';
import 'principal.dart';
import 'calculo_media.dart';
import 'creditos.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Cálculo de Média",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: const AppBarTheme(backgroundColor: Colors.blue),
      ),
      home: const Principal(),
      routes: <String, WidgetBuilder>{
        '/CalculoMedia': (BuildContext context) => const CalculoMedia(),
        '/Creditos': (BuildContext context) => const Creditos(),
      },
    );
  }
}
