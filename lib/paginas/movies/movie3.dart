// ignore: file_names
// ignore_for_file: prefer_const_constructors, avoid_print, file_names, duplicate_ignore
import 'package:flutter/material.dart';

class Movie3 extends StatefulWidget {
  const Movie3({Key? key}) : super(key: key);

  @override
  State<Movie3> createState() => _Movie3State();
}

class _Movie3State extends State<Movie3> {
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
                      image: AssetImage('images/Pelicula3.jpg'),
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
                        'sonic 2: la pelicula'.toUpperCase(),
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
//                           padding: EdgeInsets.symmetric(
//                             horizontal: 15,
//                           ),
//                           height: 150,
//                           child: SingleChildScrollView(
//                             scrollDirection: Axis.vertical,
//                             child: Wrap(
//                               children: const [
//                                 Text(
//                                   'En Animales Fantásticos: Los Secretos de Dumbledore el malvado y poderoso mago Grindelwald sigue buscando adeptos a su causa, pero esta vez se transportará a todos los rincones y mundos mágicos existentes para obtener lo que quiere. Por otra parte, Dumbledore unirá a su propio ejército formado por Newt y Theseus Scamander, Jacob, entre otros, para poner fin a la guerra que está a punto de comenzar Grindelwald en su nombre. Mientras encuentran aliados y la manera de poner fin a esta oscura edad, el pasado de Dumbledore irá cada vez tomando más presencia en la historia entre él y su antiguo amigo Grindelwald, con quien le unen otros grandes lazos más allá de la enemistad.',
//                                   textAlign: TextAlign.left,
//                                   style: TextStyle(
//                                     fontSize: 18,
//                                     color: Color.fromRGBO(200, 205, 208, 1),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
