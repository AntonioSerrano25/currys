import 'package:flutter/material.dart';


class cards_home extends StatefulWidget {
  const cards_home({super.key});

  @override
  State<cards_home> createState() => _cards_homeState();
}

class _cards_homeState extends State<cards_home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children:  [
            Container(
              margin: EdgeInsets.only(top: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Hola de nuevo',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                    ),
                  ),
                  Text(
                    '  User',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                    ),
                  ),
                ],
              ),
            ),
             
           Row(
            mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Container(
                margin: EdgeInsets.all(30) ,
                child: SizedBox(
                  width: 110,
                  height: 110,
                  child: FittedBox(
                    child: FloatingActionButton(
                    backgroundColor: Colors.blue,
                    onPressed: () {
                      
                    },
                    child: Icon(
                      Icons.create,
                      size: 50,
                      color: Colors.black,
                    ), 
                  ),
                  ),
                ),   
               ),
           
                
                Container(
                margin: EdgeInsets.all(30),
                child: SizedBox(
                  width: 110,
                  height: 110,
                  child: FittedBox(
                    child: FloatingActionButton(
                    
                    backgroundColor: Colors.blue,
                    onPressed: () {
                      
                    },
                    child: Icon(
                      Icons.download,
                      size: 50,
                      color: Colors.black,
                    ),
                     
                  ),
                 ),
                ), 
               ), 

             ],
           ),
           
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Container(
                margin: const EdgeInsets.only(left: 75),
                 child: Text(
                       'crear',
                        style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                        ),
                  ),
                 
               ),

               Container(
                margin: EdgeInsets.only(right: 55),
                 child: const Text(
                  'Descargar',
                   style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                        ),
                  ),
                 
               ),
             ],
           ),
   
          ],
          
        ),
      ),
    
      
    );
  }
}
