import 'package:flutter/material.dart';
//import '1_tooltip.dart';
//import '2_snackbar.dart';
//import '3_alert_dialog.dart';
import '4_simple_dialog.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Exemplo Mensagens",
      theme: ThemeData(primarySwatch: Colors.blue),
      //home: const ExemploTooltip(),
      //home: const ExemploSnackbar(),
      //home: const ExemploAlertDialog(),
      home: const ExemploSimpleDialog(),
    );
  }
}
