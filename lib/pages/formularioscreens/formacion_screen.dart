import 'package:flutter/material.dart';
import 'package:proyecto_currys/widgets/formulario/formacion.dart';

class FormacionScreen extends StatelessWidget {
  const FormacionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Crea Tu curriculum'),
          centerTitle: true,
          shadowColor: Colors.blue[700],
          backgroundColor: Colors.blue[700],
          elevation: 0,
        ),
        body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [const Formacion()],
            )));
  }
}
