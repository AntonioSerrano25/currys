import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'cond_privacity.dart';

class config extends StatelessWidget {
  const config({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Configuracion"),
      ),
      body: ListView(
        children: <Widget> [
          Card(
            elevation: 20,
            margin: EdgeInsets.all(15),
            child: SizedBox(
              width: 150,
              height: 120,
              child: Row(children: <Widget> [
              Container(padding: EdgeInsets.only(left: 0, right: 60), margin: EdgeInsets.all(20), alignment: Alignment.topLeft, child: 
              Image(image: NetworkImage("https://cdn-icons-png.flaticon.com/512/5772/5772150.png")),
              ),
              Container(alignment: Alignment.centerRight, child: TextButton(onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => cond_privacity()));} , child: Text("Condiciones y privacidad", textAlign: TextAlign.end,),))
            ],)
            ),
          ),
                    Card(
            elevation: 20,
            margin: EdgeInsets.all(15),
            child: SizedBox(
              width: 150,
              height: 120,
              child: Row(children: <Widget> [
              Container(padding: EdgeInsets.only(left: 0, right: 60), margin: EdgeInsets.all(20), alignment: Alignment.topLeft, child: 
              Image(image: NetworkImage("https://cdn-icons-png.flaticon.com/512/5774/5774397.png")),
              ),
              Container(alignment: Alignment.centerRight, child: TextButton(onPressed: () {} , child: Text("Cambiar contraseña", textAlign: TextAlign.end,),))
            ],)
            ),
          ),
                    Card(
            elevation: 20,
            margin: EdgeInsets.all(15),
            child: SizedBox(
              width: 150,
              height: 120,
              child: Row(children: <Widget> [
              Container(padding: EdgeInsets.only(left: 0, right: 60), margin: EdgeInsets.all(20), alignment: Alignment.topLeft, child: 
              Image(image: NetworkImage("https://cdn-icons-png.flaticon.com/512/5774/5774467.png")),
              ),
              Container(alignment: Alignment.centerRight, child: TextButton(onPressed: () {} , child: Text("Cambiar correo", textAlign: TextAlign.end,),))
            ],)
            ),
          ),
                    Card(
            elevation: 20,
            margin: EdgeInsets.all(15),
            child: SizedBox(
              width: 150,
              height: 120,
              child: Row(children: <Widget> [
              Container(padding: EdgeInsets.only(left: 0, right: 60), margin: EdgeInsets.all(20), alignment: Alignment.topLeft, child: 
              Image(image: NetworkImage("https://cdn-icons-png.flaticon.com/512/5774/5774459.png")),
              ),
              Container(alignment: Alignment.centerRight, child: TextButton(onPressed: () {} , child: Text("Cambiar telefono", textAlign: TextAlign.end,),))
            ],)
            ),
          ),
                    Card(
            elevation: 20,
            margin: EdgeInsets.all(15),
            child: SizedBox(
              width: 150,
              height: 120,
              child: Row(children: <Widget> [
              Container(padding: EdgeInsets.only(left: 0, right: 60), margin: EdgeInsets.all(20), alignment: Alignment.topLeft, child: 
              Image(image: NetworkImage("https://cdn-icons-png.flaticon.com/512/5774/5774028.png")),
              ),
              Container(alignment: Alignment.centerRight, child: TextButton(onPressed: () {} , child: Text("Cerrar sesion", textAlign: TextAlign.end,),))
            ],)
            ),
          )
        ],
      ),
    );
  }
}