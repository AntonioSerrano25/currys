import 'package:flutter/material.dart';
import 'package:proyecto_currys/pages/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // ignore: unnecessary_new
    return new MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Curry`s',
        theme: new ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: (home(FirstRoute())));
  }
}
