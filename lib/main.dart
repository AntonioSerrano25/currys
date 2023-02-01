import 'package:flutter/material.dart';
import 'package:proyecto_currys/pages/home.dart';
import 'package:proyecto_currys/pages/login_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // ignore: unnecessary_new
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
       home: const LoginPage(),
    );
    
  }
  
}
