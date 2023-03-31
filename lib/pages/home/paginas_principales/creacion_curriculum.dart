// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:provider/provider.dart';
import 'package:proyecto_currys/pages/formularioscreens/datos_personales_screens.dart';
import 'package:proyecto_currys/pages/formularioscreens/experiencia_laboral_screen.dart';
import 'package:proyecto_currys/pages/formularioscreens/formacion_screen.dart';
import 'package:proyecto_currys/pages/formularioscreens/idiomas.dart';
import 'package:proyecto_currys/pages/home/consumo/login_page.dart';
import 'package:proyecto_currys/providers/curriculums_providers.dart';
import 'package:proyecto_currys/widgets/secciones/widgets_secciones.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SecondRoute extends StatelessWidget {
  Future<void> datos() async {
    // Leer el token almacenado en SharedPreferences
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? nombres = prefs.getString('nombres');
    String? apellidos = prefs.getString('apellidos');
    String? email = prefs.getString('email');
    String? telefono = prefs.getString('telefono');
    String? direccion = prefs.getString('direccion');
    String? descripcionn = prefs.getString('descripcionn');

    List<String>? institucion = prefs.getStringList('institucion');
    List<String>? grado = prefs.getStringList('grado');
    List<String>? campoEstudio = prefs.getStringList('campoEstudio');
    List<String>? fechaInicioo = prefs.getStringList('fechaInicio');
    List<String>? fechafiin = prefs.getStringList('fechafiin');

    List<String>? compania = prefs.getStringList('compania');
    List<String>? posicion = prefs.getStringList('posicion');
    List<String>? fechainicioo = prefs.getStringList('fechainicioo');
    List<String>? fechafiiin = prefs.getStringList('fechafiin');

    List<String>? idiomas = prefs.getStringList('idiomas');

    // Imprimir los valores
    print("DATOS PERSONALES");
    print('nombre: $nombres');
    print('apellidos: $apellidos');
    print('email: $email');
    print('telefono: $telefono');
    print('direccion $direccion');
    print('descripcion:$descripcionn');

    print("EXPERINCIA LABORAL");
    print('compania: $compania');
    print('posicion: $posicion');
    print('fecha_inicioo: $fechainicioo');
    print('fecha_fiin: $fechafiiin');

    print("FORMACION");
    print('institucion: $institucion');
    print('formacion: $grado');
    print('localidad: $campoEstudio');
    print('inicio: $fechaInicioo');
    print('fin: $fechafiin');

    print("IDIOMAS");
    print('idiomas:$idiomas');

    // Si se encuentra un token, redirigir al usuario a la página de inicio correspondiente
  }

  const SecondRoute({super.key});
  @override
  Widget build(BuildContext context) {
    final logger = Logger();
    final formkey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Crea tu CV profesional'),
        centerTitle: true,
        shadowColor: const Color.fromARGB(255, 57, 73, 171),
        backgroundColor: const Color.fromARGB(255, 57, 73, 171),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                "Secciones",
                style: TextStyle(
                  color: Colors.grey[500],
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                  letterSpacing: 1.2,
                ),
              ),
            ),
            secciones(
              texto: 'Datos Personales',
              icono: Icons.person,
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: ((context) => const CurriculumsPost())),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            secciones(
              texto: 'Experiencia Laboral',
              icono: Icons.work,
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: ((context) => const ExpercienciaLaboralScreen())),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            secciones(
              texto: 'Educacion',
              icono: Icons.school,
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: ((context) => const FormacionScreen())),
              ),
            ),
            // secciones(
            //   texto: 'Idioma',
            //   icono: Icons.spellcheck_sharp,
            //   onTap: () => Navigator.push(
            //     context,
            //     MaterialPageRoute(builder: ((context) => const Idiomas())),
            //   ),
            // ),
            const SizedBox(
              height: 200,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    
                    // Accidatón al presionar el botón
                    datos();
                  },
                  child: Text("Crear CV", style: TextStyle(fontSize: 15)),
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
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                    minimumSize: const Size(150, 50),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
