import 'package:flutter/material.dart';
import 'package:proyecto_currys/pages/home.dart';
import 'package:proyecto_currys/pages/login_page.dart';

class signUp extends StatelessWidget {
  const signUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 30.0, top: 15),
                  child: Row(
                    children: const [
                      Text(
                        "Registro",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                      ),
                      
                    ],
                  ),
                ),


                Container(
                  padding: const EdgeInsets.only(left: 30.0, top: 15.0),
                  child: Row(
                    children: const [
                      Text(
                        "Date de alta llenando los siguientes datos",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.blue),
                        
                      ),  
                    ],
                  ),
                ),

                Container(
                  padding: const EdgeInsets.only(left: 30.0, top: 15.0),
                  child: Row(
                    children: const [
                      Text(
                        "Nombre",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15,),
                        
                      ),  
                    ],
                  ),
                ),

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
                                  border: InputBorder.none, hintText: "Introduce tu nombre's"),
                            ),
                    )))),
                  
                  Container(
                  padding: const EdgeInsets.only(left: 30.0, top: 10.0),
                  child: Row(
                    children: const [
                      Text(
                        "Apellidos",
                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),
                        
                      ),  
                    ],
                  ),
                ),

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
                                  border: InputBorder.none, hintText: "Introduce tus apellidos"),
                            ),
                          )))),

                Container(
                  padding: const EdgeInsets.only(left: 30.0, top: 10.0),
                  child: Row(
                    children: const [
                      Text(
                        "correo",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15,),
                        
                      ),  
                    ],
                  ),
                ),

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
                                  border: InputBorder.none, hintText: "Hola@tuemail.com"),
                            ),
                    )))),


                  Container(
                  padding: const EdgeInsets.only(left: 30.0, top: 10.0),
                  child: Row(
                    children: const [
                      Text(
                        "Contraseña",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15,),
                        
                      ),  
                    ],
                  ),
                ),

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
                                  border: InputBorder.none, hintText: "Introduce una contraseña"),
                            ),
                    )))),

                  Container(
                  padding: const EdgeInsets.only(left: 30.0, top: 10.0),
                  child: Row(
                    children: const [
                      Text(
                        "Telefono",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, ),
                        
                      ),  
                    ],
                  ),
                ),

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
                                  border: InputBorder.none, hintText: "+52"),
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
                  child: const Text('sing up'),
                ),
                 
              ),
                  SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "¿Ya cuentas con una cuenta??",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),

                     TextButton(
                        onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                        builder: (((context) => const LoginPage()))));
                        },
                          child: const Text("Inicia sesion",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                        )
                  ],
                ),
              ),
              
              ]
            ),
            
          ],
           
          ),
        )
            
       )
    );
  }
}