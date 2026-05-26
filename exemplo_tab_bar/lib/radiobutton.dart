import 'package:flutter/material.dart';

class RadioButton extends StatefulWidget {
  const RadioButton({super.key});

  @override
  State<RadioButton> createState() => _RadioButtonState();
}

class _RadioButtonState extends State<RadioButton> {
  int? _radioValue;
  String _escolha = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(50.0),
        child: RadioGroup(
          groupValue: _radioValue,
          onChanged: (value) {
            setState(() {
              _radioValue = value;
            });
          },
          child: Column(
            children: [
              const Row(
                children: [Radio<int>(value: 1), Text("RadioButton 1")],
              ),
              const Row(
                children: [Radio<int>(value: 2), Text("RadioButton 2")],
              ),
              const Row(
                children: [Radio<int>(value: 3), Text("RadioButton 3")],
              ),
              SizedBox(height: 25),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _mostrarEscolha();
                  });
                },
                child: const Text("Confirmar"),
              ),
              SizedBox(height: 50),
              Text(_escolha),
            ],
          ),
        ),
      ),
    );
  }

  void _mostrarEscolha() {
    if (_radioValue == 1) {
      _escolha = "RadioButton 1";
    } else if (_radioValue == 2) {
      _escolha = "RadioButton 2";
    } else if (_radioValue == 3) {
      _escolha = "RadioButton 3";
    } else {
      _escolha = "Nenhuma opção selecionada";
    }
  }
}
