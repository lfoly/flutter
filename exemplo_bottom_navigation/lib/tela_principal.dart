import 'package:flutter/material.dart';
import 'tela1.dart';
import 'tela2.dart';
import 'tela3.dart';

class TelaPrincipal extends StatefulWidget {
  const TelaPrincipal({super.key});

  @override
  State<TelaPrincipal> createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  var paginaAtual = 0;
  var paginas = const [Tela1(), Tela2(), Tela3()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exemplo Inicial'),
        backgroundColor: Colors.greenAccent,
      ),
      body: Center(child: paginas.elementAt(paginaAtual)),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.greenAccent,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.text_snippet),
            label: 'Text',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.ads_click), label: 'Button'),
          BottomNavigationBarItem(
            icon: Icon(Icons.remove_from_queue),
            label: 'Form',
          ),
        ],
        currentIndex: paginaAtual,
        fixedColor: Colors.redAccent,
        onTap: (int inIndex) {
          setState(() {
            paginaAtual = inIndex;
          });
        },
      ),
    );
  }
}
