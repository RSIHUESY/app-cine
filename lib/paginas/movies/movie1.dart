import 'package:flutter/material.dart';

class Movie1 extends StatefulWidget {
  const Movie1({Key? key}) : super(key: key);

  @override
  State<Movie1> createState() => _Movie1State();
}

class _Movie1State extends State<Movie1> {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    Size size = mediaQuery.size;

    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(25, 34, 41, 1),
        //CONTENIDO
        body: ListView(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  //PORTADA
                  SizedBox(
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      height: size.height * 0.75,
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(25)),
                        image: const DecorationImage(
                          image: AssetImage('images/Pelicula1.jpg'),
                          fit: BoxFit.fitWidth,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white.withOpacity(0.3),
                            blurRadius: 20,
                            offset: const Offset(0, 10),
                          ),
                        ],
                      ),
                    ),
                  ),

                  //INFORMACION
                  SizedBox(
                    child: Container(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        children: [
                          //TITULO DE LA PELICULA
                          Text(
                            'doctor strange en el multiverso de la locura'
                                .toUpperCase(),
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 24,
                              color: Color.fromRGBO(239, 243, 245, 1),
                            ),
                          ),

                          //Division
                          const Divider(
                            color: Color.fromRGBO(42, 59, 71, 1.0),
                            thickness: 3, //Grosor
                          ),

                          //DESCRIPCION
                          Container(
                            padding: const EdgeInsets.all(15),
                            margin: const EdgeInsets.symmetric(horizontal: 10),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              boxShadow: const [
                                BoxShadow(
                                  color: Color.fromRGBO(30, 42, 50, 1),
                                ),
                              ],
                            ),
                            child: const Text(
                              'Benedict Cumberbatch, Elizabeth Olsen, Chiwetel Ejiofor, Benedict Wong, Xochitl Gomez, Michael Stuhlbarg, Rachel McAdams, Patrick Stewart.',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 16,
                                color: Color.fromRGBO(200, 205, 208, 1),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  //BOTON MAS INFORMACION
                  SizedBox(
                    child: TextButton(
                      onPressed: () {},
                      child: const Text("Más información"),
                      style: TextButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(164, 23, 32, 1),
                        primary: const Color.fromARGB(255, 224, 229, 233),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: const BorderSide(
                            color: Color.fromRGBO(180, 49, 58, 1),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Container(
//                     margin: EdgeInsets.all(5),
//                     child: ElevatedButton(
//                       onPressed: () {},
//                       child: Text(
//                         'comprar entradas'.toUpperCase(),
//                         style: TextStyle(
//                           fontSize: 20,
//                         ),
//                       ),
//                     ),
//                   ),

// SingleChildScrollView(
//   scrollDirection: Axis.horizontal,
//   child: Row(
//     children: [
//       // 1
//       Container(
//         margin: EdgeInsets.symmetric(horizontal: 10),
//         child: ElevatedButton(
//           onPressed: () {},
//           child: Text('2:00 pm'),
//         ),
//       ),
//     ],
//   ),
// )

// Text(
//                                   'Ahora que Iron Man y el Capitán América se han ido después de una feroz batalla en Avengers: Endgame, se espera que el ex genio cirujano y mago más fuerte de todos, el Doctor Strange, juegue un papel activo como figura central en los Vengadores. Sin embargo, usar su magia para manipular el tiempo y el espacio a voluntad con un hechizo prohibido que se considera el más peligroso, ha abierto la puerta a una misteriosa locura llamada "el Multiverso". Para restaurar un mundo en el que todo está cambiando, Strange busca la ayuda de su aliado Wong, el Hechicero Supremo, y la Bruja Escarlata más poderosa de los Vengadores, Wanda. Pero una terrible amenaza se cierne sobre la humanidad y el universo entero que ya no puede sostenerse con sólo su poder. Aún más sorprendente, la mayor amenaza en el universo luce exactamente como Doctor Strange',
//                                   textAlign: TextAlign.left,
//                                   style: TextStyle(
//                                     fontSize: 18,
//                                     color: Color.fromRGBO(200, 205, 208, 1),
//                                   ),
//                                 ),