import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:proyecto_currys/pages/home.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent[300],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Container(
                width: 700,
                height: 250,
                color: Colors.blue,
                child: Image.asset(
                  'assets/images/currys.jpg',
                 fit: BoxFit.cover,
                ),
              ),

                Container(
                margin: EdgeInsets.only(top: 20,left: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Inicia sesion con tu cuenta de',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '  Facebook',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            
                Container(
                margin: EdgeInsets.only(top: 30),
                child: SizedBox(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(12)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Email',
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              //  password textfield
              Container(
                margin: EdgeInsets.only(top: 30),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(12)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Password',
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              //login buttom
              Container(
                margin: EdgeInsets.only(top: 30),
                child: SizedBox(
                  height: 40,
                  width: 300,
                  child: ElevatedButton(
                    child: const Text('sing in'),
                    style: ElevatedButton.styleFrom(
                        alignment: Alignment.center,
                        backgroundColor: Color.fromARGB(255, 0, 112, 224),
                        side: BorderSide(
                          color: Color.fromARGB(255, 38, 37, 37),
                          width: 0.5,
                        ),
                        shape: BeveledRectangleBorder(
                            borderRadius: BorderRadius.circular(4)),
                        textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        )),
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: ((context) => home())));
                    },
                  ),
                ),
              ),

              // not a member? register now
              Container(
                margin: EdgeInsets.only(top :150),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Not a member?',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      ' Register Now',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            
              //  email textfield
            ]
          ),
        ),
      ),
    );
  }
}
