import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:proyecto_currys/pages/home.dart';
import 'package:proyecto_currys/pages/sign_up.dart';
import 'package:proyecto_currys/widgets/cards_home.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
            child: Column(children: [
          Image.asset(
            'assets/images/currys.jpg',
            fit: BoxFit.cover,
            width: double.infinity,
          ),

          Column(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 30.0, top: 20.0),
                child: Row(
                  children: const [
                    Text(
                      "Inicia sesion con tu cuenta de",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      " Facebook",
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          ),

          Column(
            children: [
              SizedBox(
                  child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 30.0,
                      ),
                      child: Container(
                          margin: const EdgeInsets.only(top: 10, bottom: 15),
                          decoration: BoxDecoration(
                              color: Colors.grey[200],
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(12)),
                          child: const Padding(
                            padding: EdgeInsets.only(left: 20.0),
                            child: TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none, hintText: "EMAIL"),
                            ),
                          )))),
              SizedBox(
                  child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 30.0,
                      ),
                      child: Container(
                          margin: const EdgeInsets.only(top: 10, bottom: 15),
                          decoration: BoxDecoration(
                              color: Colors.grey[200],
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(12)),
                          child: const Padding(
                            padding: EdgeInsets.only(left: 20.0),
                            child: TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "PASSWORD"),
                            ),
                          )))),
              SizedBox(
                width: 150,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 0, 112, 224),
                      shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.circular(2.5)),
                      // ignore: prefer_const_constructors
                      textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      )),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: ((context) => home())));
                  },
                  child: const Text('sing in'),
                ),

              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(top: 150),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "¿No tienes cuenta?",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),

                     TextButton(
                        onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                        builder: (((context) => signUp()))));
                        },
                          child: const Text("registrate",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                        )
                  ],
                ),
              ),
            ],
          ) //  email textfield
        ])),
      ),
    );
  }
}
