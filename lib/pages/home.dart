import 'package:flutter/material.dart';
import 'package:proyecto_currys/pages/configuracion.dart';
import 'package:proyecto_currys/pages/creacion_curriculum.dart';
import 'package:proyecto_currys/pages/importacion_platilla.dart';
import 'package:proyecto_currys/pages/perfiles.dart';
import 'package:proyecto_currys/pages/seleccionar_platilla.dart';
import 'package:proyecto_currys/pages/ver_curriculums.dart';

class home extends StatefulWidget {
  home(FirstRoute firstRoute);

  homeState createState() => homeState();
}

class homeState extends State<home> {
  int _selectDrawerItem = 0;
  _getDrawerItemWidget(int pos) {
    switch (pos) {
      case 1:
        return perfiles_usuarios();

      case 2:
        return seleccion_plantilas();
      case 3:
        return importacion_plantilla();
      case 4:
        return Ver_curriculum();
      case 5:
        return Configuracion();
    }
  }

  _onSelectItem(int pos) {
    setState(() {
      _selectDrawerItem = pos;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Center(
          child: Text("Curry`s"),
        )),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                  accountName: Text("CV de antonio"),
                  accountEmail: Text("antonio123@gmail")),
              ListTile(
                title: Text("Home"),
                leading: Icon(Icons.home),
                onTap: () {
                  _onSelectItem(0);
                },
              ),
              ListTile(
                title: Text("Perfil"),
                leading: Icon(Icons.person),
                onTap: () {
                  _onSelectItem(1);
                },
              ),
              ListTile(
                title: Text("Seleccion de platilla"),
                leading: Icon(Icons.task),
                onTap: () {
                  _onSelectItem(2);
                },
              ),
              ListTile(
                title: Text("Importar plantilla"),
                leading: Icon(Icons.document_scanner),
                onTap: () {
                  _onSelectItem(3);
                },
              ),
              ListTile(
                title: Text("Ver Curriculums"),
                leading: Icon(Icons.search),
                onTap: () {
                  _onSelectItem(4);
                },
              ),
              ListTile(
                title: Text("Configuracion"),
                leading: Icon(Icons.settings),
                onTap: () {
                  _onSelectItem(5);
                },
              ),
            ],
          ),
        ),
        body: _getDrawerItemWidget(_selectDrawerItem));
  }
}

class FirstRoute extends StatelessWidget {
  const FirstRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Route'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Open route'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondRoute()),
            );
          },
        ),
      ),
    );
  }
}
