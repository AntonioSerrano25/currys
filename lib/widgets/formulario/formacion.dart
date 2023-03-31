// ignore_for_file: non_constant_identifier_names, unused_local_variable, unused_element, unused_import, avoid_print

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:proyecto_currys/pages/home/paginas_principales/creacion_curriculum.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Formacion extends StatefulWidget {
  const Formacion({super.key});

  @override
  State<Formacion> createState() => _FormacionState();
}

class _FormacionState extends State<Formacion> {
  @override
  Widget build(BuildContext context) {
    final logger = Logger();
    final formkey = GlobalKey<FormState>();
    final List<TextEditingController> institucion_cotroller = [
      TextEditingController()
    ];
    final List<TextEditingController> grado_controller = [
      TextEditingController()
    ];
    final List<TextEditingController> campo_Estudio_Controller = [
      TextEditingController()
    ];
    final List<TextEditingController> fechaInicio_Controller = [TextEditingController()];
    final List<TextEditingController> fechaFin_Controller = [TextEditingController()];
    // late String formacion = "";
    // // late String institucion = "";
    // late String localidad = "";
    // late String inicio = "";
    // late String fin = "";

    @override
    void initState() {
      super.initState();
    }

    Future<void> _checkLoggedIn() async {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      List<String> institucion =
          institucion_cotroller.map((controller) => controller.text).toList();
      await prefs.setStringList('institucion', institucion);
      // await prefs.setString('institucion', institucion_cotroller.text);
      await prefs.setString('localidad', formacionLocalidad_controller.text);
      await prefs.setString('inicio', fechaInicio_Controller.text);
      await prefs.setString('fin', fechaFin_Controller.text);
      // Si se encuentra un token, redirigir al usuario a la página de inicio correspondiente
    }

    Future<void> datos(BuildContext context) async {
      print("entro");
      // Leer el token almacenado en SharedPreferences
      SharedPreferences prefs = await SharedPreferences.getInstance(); //una
      // String? formacion = prefs.getString('formacion');

      List<String>? institucion = prefs.getStringList('Institucion');
      // String? institucion = prefs.getString('institucion');
      String? localidad = prefs.getString('localidad');
      String? inicio = prefs.getString('inicio');
      String? fin = prefs.getString('fin');

      // Imprimir los valores
      print('institucion: $institucion');
      print('localidad: $localidad');
      print('inicio: $inicio');
      print('fin: $fin');

      // Si se encuentra un token, redirigir al usuario a la página de inicio correspondiente
    }

    Future<void> clearUserData() async {
      print("eliminooo");
      SharedPreferences prefs = await SharedPreferences.getInstance();
      // await prefs.remove('formacion');
      await prefs.remove('institucion');
      await prefs.remove('localidad');
      await prefs.remove('inicio');
      await prefs.remove('fin');
    }

    return Form(
        key: formkey,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              // TextFormField(
              //   decoration: InputDecoration(
              //     suffixIcon: const Icon(Icons.school_outlined),
              //     labelText: 'formacion',
              //     border: OutlineInputBorder(
              //       borderRadius: BorderRadius.circular(10.0),
              //       borderSide: const BorderSide(color: Colors.grey),
              //     ),
              //     contentPadding:
              //         const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
              //   ),
              //   controller: formacion_controller,
              //   enableInteractiveSelection: false,
              //   autofocus: false,
              //   validator: (value) {
              //     if (value == null || value.isEmpty) {
              //       return 'Este campo es requerido';
              //     }
              //     return null;
              //   },
              // ),

              TextFormField(
                decoration: InputDecoration(
                  suffixIcon: const Icon(Icons.school),
                  labelText: 'Institucion',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(color: Colors.grey),
                  ),
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                ),
                controller: institucion_cotroller,
                enableInteractiveSelection: false,
                autofocus: false,
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
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                ),
                controller: formacionLocalidad_controller,
                enableInteractiveSelection: false,
                autofocus: false,
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
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                ),
                controller: fechaInicio_Controller,
                enableInteractiveSelection: false,
                autofocus: false,
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
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                ),
                controller: fechaFin_Controller,
                enableInteractiveSelection: false,
                autofocus: false,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Este campo es requerido';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 35,
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
