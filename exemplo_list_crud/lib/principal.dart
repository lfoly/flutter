import 'package:exemplo_list_crud/contato_controller.dart';
import 'package:flutter/material.dart';

import 'formulario.dart';

class Principal extends StatefulWidget {
  const Principal({super.key});

  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Exemplo CRUD')),
      body: _construirLista(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Formulario()),
          ).then((_) {
            setState(() {});
          });
        },
        tooltip: 'Adicionar Contato',
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _construirLista() {
    if (ContatoController.lista.isNotEmpty) {
      return ListView.builder(
        itemCount: ContatoController.lista.length,
        shrinkWrap: true,
        padding: const EdgeInsets.all(10),
        itemBuilder: (BuildContext, index) {
          return Card(
            child: ListTile(
              title: Text(ContatoController.lista[index].nome!),
              subtitle: Text(ContatoController.lista[index].email!),
              trailing: Text(ContatoController.lista[index].telefone!),
              onLongPress: () {
                setState(() {
                  ContatoController.excluir(ContatoController.lista[index]);
                });
              },
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        Formulario(contato: ContatoController.lista[index]),
                  ),
                ).then((_) {
                  setState(() {});
                });
              },
            ),
          );
        },
      );
    } else {
      return const Center(child: Text("Nenhum Contato cadastrado"));
    }
  }
}
