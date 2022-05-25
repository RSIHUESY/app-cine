// ignore: file_names
// ignore_for_file: prefer_const_constructors, avoid_print, file_names, duplicate_ignore
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
        backgroundColor: Color.fromRGBO(25, 34, 41, 1),
        //CONTENIDO
        body: Container(
          height: size.height,
          width: size.width,
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              //PORTADA
              SizedBox(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  height: size.height * 0.45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    image: DecorationImage(
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

              const Spacer(),
              //INFORMACION
              SizedBox(
                child: Container(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    children: [
                      //TITULO DE LA PELICULA
                      Text(
                        'doctor strange en el multiverso de la locura'
                            .toUpperCase(),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 24,
                          color: Color.fromRGBO(239, 243, 245, 1),
                        ),
                      ),

                      //Division
                      Divider(
                        color: Color.fromRGBO(42, 59, 71, 1.0),
                        thickness: 3, //Grosor
                      ),

                      //DESCRIPCION
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        height: size.height * 0.15,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          boxShadow: const [
                            BoxShadow(
                              color: Color.fromRGBO(30, 42, 50, 1),
                            ),
                          ],
                        ),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Wrap(
                            children: const [
                              Text(
                                'Benedict Cumberbatch, Elizabeth Olsen, Chiwetel Ejiofor, Benedict Wong, Xochitl Gomez, Michael Stuhlbarg, Rachel McAdams, Patrick Stewart.',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Color.fromRGBO(200, 205, 208, 1),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
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