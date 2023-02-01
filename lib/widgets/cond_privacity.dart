import 'package:flutter/material.dart';

class cond_privacity extends StatelessWidget {
  const cond_privacity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Condiciones y Privacidad"),
      ),
      body: Column( 
        children: <Widget> [
          Center(child:          Card(
          elevation: 20,
          margin: EdgeInsets.all(15),
          child: SizedBox(
          width: 280,
          height: 450,
          child: Column(children: <Widget> [
            Container(
            margin: EdgeInsets.all(15),
            child: Text("Para administrar su privacidad, puede usar nuestros servicios de diversas maneras. Por ejemplo, puede registrarse para obtener una Cuenta de Google si desea crear y administrar contenido como correos electrónicos y fotos o ver resultados de búsqueda más relevantes. Además, puede usar muchos servicios de Google sin acceder a la cuenta o incluso sin necesidad de crear una, como realizar búsquedas en Google o mirar videos en YouTube. También puede navegar en la Web mediante un modo privado, como el modo Incógnito de Chrome. Además, en todos nuestros servicios, puede modificar la configuración de privacidad para controlar la información que recopilamos y de qué manera se usa.") ,)
  
          ],
          )
          ),
        ),),
      ],
      )
      );
  }
}