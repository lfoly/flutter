import "package:flutter/material.dart";

class ExemploSnackbar extends StatelessWidget {
  const ExemploSnackbar({super.key});

  @override
  // ignore: avoid_renaming_method_parameters
  Widget build(BuildContext context) {
    mostrarMensagem() {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Colors.teal,
          duration: const Duration(seconds: 5),
          content: const Text("Exemplo de Snackbar!"),
          action: SnackBarAction(
            label: "Fechar",
            onPressed: () {
              print("Snackbar pressionado");
            },
          ),
        ),
      );
    }

    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: mostrarMensagem,
          child: const Text("Snack Bar"),
        ),
      ),
    );
  }
}
