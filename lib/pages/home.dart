import 'package:flutter/material.dart';
import 'package:proyecto_currys/pages/configuracion.dart';
import 'package:proyecto_currys/pages/creacion_curriculum.dart';
import 'package:proyecto_currys/pages/importacion_platilla.dart';
import 'package:proyecto_currys/pages/login_page.dart';
import 'package:proyecto_currys/pages/perfiles.dart';
import 'package:proyecto_currys/pages/seleccionar_platilla.dart';
import 'package:proyecto_currys/pages/ver_curriculums.dart';
import 'package:proyecto_currys/widgets/cards_home.dart';

class home extends StatefulWidget {
  homeState createState() => homeState();
}

class homeState extends State<home> {
  int _selectDrawerItem = 1;
  _getDrawerItemWidget(
    int pos,
  ) {
    switch (pos) {
      case 1:
        return perfiles_usuarios();
      case 2:
        return seleccion_plantilas();
      case 3:
        return home();
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
          child: Text("Currys"),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              (Icons.notifications),
            ),
            onPressed: () {},
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            const UserAccountsDrawerHeader(
                accountName: Text("CV de antonio"),
                accountEmail: Text("antonio123@gmail")),
            ListTile(
              title: Text("Home"),
              leading: const Icon(Icons.home),
              onTap: () {
                
              },
            ),
            ListTile(
              title: const Text("Perfil"),
              leading: const Icon(Icons.person),
              onTap: () {
                
              },
            ),
            ListTile(
              title: const Text("Seleccion de platilla"),
              leading: const Icon(Icons.file_copy),
              onTap: () {
               
              },
            ),
            ListTile(
              title: const Text("Importar plantilla"),
              leading: const Icon(Icons.file_open_outlined),
              onTap: () {},
            ),
            ListTile(
              title: const Text("Ver Curriculums"),
              leading: const Icon(Icons.search),
              onTap: () {},
            ),
            ListTile(
              title: const Text("Configuracion"),
              leading: const Icon(Icons.settings),
              onTap: () {},
            ),
            ListTile(
              title: const Text("Cerrar Sesion"),
              leading: const Icon(Icons.exit_to_app),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: ((context) => const LoginPage())));
              },
            )
          ],
        ),
      ),
      body: Stack(
         
        children: [
          const cards_home(),
        ],
        
      ),
      
    );
  }
}
