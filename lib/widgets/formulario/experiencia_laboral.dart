// ignore_for_file: prefer_const_constructors, deprecated_member_use, unused_local_variable, prefer_const_declarations, unused_element, avoid_print

import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:proyecto_currys/pages/home/paginas_principales/creacion_curriculum.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Experiemncia extends StatefulWidget {
  const Experiemncia({super.key});

  @override
  State<Experiemncia> createState() => _ExperiemnciaState();
}

class _ExperiemnciaState extends State<Experiemncia> {
  @override
  Widget build(BuildContext context) {
    
    final logger = Logger();
    final formkey = GlobalKey<FormState>();
    final puesto = TextEditingController();
    final empleador = TextEditingController();
    final empleadorlocalidad = TextEditingController();
    final inicio = TextEditingController();
    final fin = TextEditingController();

    final String puestoo = "";
    late String empleadoor = "";
    late String empleadorlocalidaad = "";
    late String inicioo = "";
    late String fiin = "";

    @override
    void initState() {
      super.initState();
    }

    Future<void> _checkLoggedIn() async {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString('puestoo', puesto.text);
      await prefs.setString('empleadoor', empleador.text);
      await prefs.setString('empleadorlocalidaad', empleadorlocalidad.text);
      await prefs.setString('inicioo', inicio.text);
      await prefs.setString('fiin', fin.text);
      // Si se encuentra un token, redirigir al usuario a la página de inicio correspondiente
    }

    Future<void> datos(BuildContext context) async {
      print("Seccion de experiencia");
      // Leer el token almacenado en SharedPreferences
      SharedPreferences prefs = await SharedPreferences.getInstance();
      String? puestoo = prefs.getString('puestoo');
      String? empleadoor = prefs.getString('empleadoor');
      String? empleadorlocalidaad = prefs.getString('empleadorlocalidaad');
      String? inicioo = prefs.getString('inicioo');
      String? fiin = prefs.getString('fiin');

      // Imprimir los valores
      print('puesto: $puestoo');
      print('empleador: $empleadoor');
      print('localidad :$empleadorlocalidaad');
      print('inicio: $inicioo');
      print('fin: $fiin');

      // Si se encuentra un token, redirigir al usuario a la página de inicio correspondiente
    }

    Future<void> clearUserData() async {
      print("eliminooo");
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.remove('puestoo');
      await prefs.remove('empleador');
      await prefs.remove('empleadorlocalidaad');
      await prefs.remove('inicioo');
      await prefs.remove('fiin');
    }

    return Form(
        key: formkey,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  suffixIcon: const Icon(Icons.work_history),
                  labelText: 'Puesto',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(color: Colors.grey),
                  ),
                ),
                controller: puesto,
                enableInteractiveSelection: false,
                autofocus: false,
                autocorrect: false,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Este campo es requerido';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(
                  suffixIcon: const Icon(Icons.work),
                  labelText: 'Empleo',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(color: Colors.grey),
                  ),
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                ),
                controller: empleador,
                enableInteractiveSelection: false,
                autofocus: false,
                autocorrect: false,
                maxLines: 5, // permite múltiples líneas
                textInputAction: TextInputAction
                    .newline, // agrega un salto de línea al presionar enter
                textAlignVertical: TextAlignVertical.top,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Este campo es requerido';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(
                  suffixIcon: const Icon(Icons.location_city),
                  labelText: 'Localidad',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(color: Colors.grey),
                  ),
                ),
                controller: empleadorlocalidad,
                enableInteractiveSelection: false,
                autofocus: false,
                autocorrect: false,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Este campo es requerido';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(
                  suffixIcon: const Icon(Icons.date_range),
                  labelText: 'Inicio',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(color: Colors.grey),
                  ),
                ),
                controller: inicio,
                enableInteractiveSelection: false,
                autofocus: false,
                autocorrect: false,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Este campo es requerido';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(
                  suffixIcon: const Icon(Icons.date_range),
                  labelText: 'Fin',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(color: Colors.grey),
                  ),
                ),
                controller: fin,
                enableInteractiveSelection: false,
                autofocus: false,
                autocorrect: false,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Este campo es requerido';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        clearUserData();
                      },
                      child: Text("eliminar")),
                  ElevatedButton.icon(
                    onPressed: () {
                      // _guardarFormulario(
                      //     formacion_controller.text,
                      //     institucion_cotroller.text,
                      //     formacionLocalidad_controller.text,
                      //     fechaInicio_Controller.text,
                      //     fechaFin_Controller.text,
                      //     context);
                      if (formkey.currentState!.validate()) {
                        _checkLoggedIn();
                        // _guardarFormulario(
                        //     formacion_controller.text,
                        //     institucion_cotroller.text,
                        //     formacionLocalidad_controller.text,
                        //     fechaInicio_Controller.text,
                        //     fechaFin_Controller.text,
                        //     context);
                        datos(context);
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Formulario guardado')),
                        );
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const SecondRoute()));
                      } else {
                        if (context.mounted) {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: const Text('Error al guardar '),
                                content:
                                    const Text('debes llenar todos los datos'),
                                actions: [
                                  TextButton(
                                    child: const Text('Entendido'),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                ],
                              );
                            },
                          );
                        }
                      }
                    },
                    icon: const Icon(Icons.save, size: 15),
                    label: const Text(
                      'salvar',
                      style: TextStyle(fontSize: 15),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF494FBF),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: const EdgeInsets.symmetric(
                        vertical: 15,
                        horizontal: 30,
                      ),
                      elevation: 5,
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
