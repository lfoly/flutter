import "package:flutter/material.dart";

class ExemploAlertDialog extends StatelessWidget {
  const ExemploAlertDialog({super.key});

  @override
  Widget build(BuildContext inContext) {
    mostrarMensagem() {
      return showDialog(
        context: inContext,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text("Um Alert Dialog"),
            content: SizedBox(
              height: 50,
              child: const Center(child: Text("Exemplo de Alert Dialog...")),
            ),
            actions: [
              ElevatedButton(
                child: const Text("Ok, ciente"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }

    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: mostrarMensagem,
          child: const Text("Alert Dialog"),
        ),
      ),
    );
  }
}
