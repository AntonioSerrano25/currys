import 'package:flutter/material.dart';

class import_files extends StatelessWidget {
  const import_files({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Importar plantillas"),
      ),
      body: Column( 
        mainAxisAlignment: MainAxisAlignment.center, 
        crossAxisAlignment: CrossAxisAlignment.center, 
        children: <Widget> [
        Center(child: Card(
          elevation: 20,
          margin: EdgeInsets.all(15),
          child: SizedBox(
          width: 300,
          height: 200,
          child: Column(children: <Widget> [
            Icon(
              Icons.import_export,
              size: 150,
              weight: 150,
              ),
            TextButton(onPressed: () {}, child: Text("Seleccionar documento"))
          ],
          )
          ),
        ),),
        Center(child:ElevatedButton(onPressed: () {}, child: const Text("Crear")) ,)
        
      ],
      )
      );
  }
}