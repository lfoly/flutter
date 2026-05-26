import 'package:flutter/material.dart';

import 'contato.dart';
import 'contato_controller.dart';

class Formulario extends StatefulWidget {
  final Contato? contato;

  const Formulario({Key? key, this.contato}) : super(key: key);

  @override
  State<Formulario> createState() => _FormularioState();
}

class _FormularioState extends State<Formulario> {
  TextEditingController nomeCtrl = TextEditingController();
  TextEditingController emailCtrl = TextEditingController();
  TextEditingController telefoneCtrl = TextEditingController();

  @override
  void initState() {
    super.initState();

    nomeCtrl = TextEditingController(text: widget.contato?.nome ?? '');
    emailCtrl = TextEditingController(text: widget.contato?.email ?? '');
    telefoneCtrl = TextEditingController(text: widget.contato?.telefone ?? '');
  }

  @override
  void dispose() {
    nomeCtrl.dispose();
    emailCtrl.dispose();
    telefoneCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    bool editando = widget.contato != null;

    return Scaffold(
      appBar: AppBar(title: Text("Formulário")),
      body: Container(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: nomeCtrl,
              decoration: const InputDecoration(labelText: 'Nome'),
            ),
            TextField(
              controller: emailCtrl,
              decoration: const InputDecoration(labelText: 'Email'),
            ),
            TextField(
              controller: telefoneCtrl,
              decoration: const InputDecoration(labelText: 'Telefone'),
            ),
            ElevatedButton(
              onPressed: () {
                if ((nomeCtrl.text.isNotEmpty) && (emailCtrl.text.isNotEmpty)) {
                  if (editando) {
                    widget.contato!.nome = nomeCtrl.text;
                    widget.contato!.email = emailCtrl.text;
                    widget.contato!.telefone = telefoneCtrl.text;
                  } else {
                    ContatoController.incluir(
                      Contato(
                        nome: nomeCtrl.text,
                        email: emailCtrl.text,
                        telefone: telefoneCtrl.text,
                      ),
                    );
                  }

                  Navigator.pop(context);
                }
              },
              child: Text("Gravar"),
            ),
          ],
        ),
      ),
    );
  }
}
