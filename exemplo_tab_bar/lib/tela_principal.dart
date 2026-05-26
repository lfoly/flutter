import 'package:flutter/material.dart';
import 'checkbox.dart';
import 'stepper.dart';
import 'radiobutton.dart';

class TelaPrincipal extends StatelessWidget {
  const TelaPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Exemplo de Componentes"),
          backgroundColor: Colors.amber,
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.check_box)),
              Tab(icon: Icon(Icons.looks_one)),
              Tab(icon: Icon(Icons.radio_button_checked)),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(child: CheckBox()),
            Center(child: StepperDemo()),
            Center(child: RadioButton()),
          ],
        ),
      ),
    );
  }
}
