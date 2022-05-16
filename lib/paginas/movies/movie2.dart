// ignore: file_names
// ignore_for_file: prefer_const_constructors, avoid_print, file_names, duplicate_ignore
import 'package:flutter/material.dart';

class Movie2 extends StatefulWidget {
  const Movie2({Key? key}) : super(key: key);

  @override
  State<Movie2> createState() => _Movie2State();
}

class _Movie2State extends State<Movie2> {
  late String actualPageTitle = "mis compras".toUpperCase();
  late int actualPage = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(25, 34, 41, 1),
        //CONTENIDO
        body: Center(
          child: ListView(
            children: <Widget>[
              //PELICULA 1
              Column(
                children: [
                  Container(
                    height: 300,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/Pelicula2.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        //TITULO DE LA PELICULA
                        Text(
                          'sipnosis'.toUpperCase(),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 28,
                            color: Color.fromRGBO(239, 243, 245, 1),
                          ),
                        ),

                        //DIVISION
                        SizedBox(
                          width: 500.0,
                          height: 20.0,
                          child: Divider(
                            color: Color.fromRGBO(42, 59, 71, 1.0),
                            thickness: 3, //Grosor
                          ),
                        ),

                        //DESCRIPCION
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 15,
                          ),
                          height: 150,
                          child: SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            child: Wrap(
                              children: const [
                                Text(
                                  'En Animales Fantásticos: Los Secretos de Dumbledore el malvado y poderoso mago Grindelwald sigue buscando adeptos a su causa, pero esta vez se transportará a todos los rincones y mundos mágicos existentes para obtener lo que quiere. Por otra parte, Dumbledore unirá a su propio ejército formado por Newt y Theseus Scamander, Jacob, entre otros, para poner fin a la guerra que está a punto de comenzar Grindelwald en su nombre. Mientras encuentran aliados y la manera de poner fin a esta oscura edad, el pasado de Dumbledore irá cada vez tomando más presencia en la historia entre él y su antiguo amigo Grindelwald, con quien le unen otros grandes lazos más allá de la enemistad.',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Color.fromRGBO(200, 205, 208, 1),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        //DIVISION
                        SizedBox(
                          width: 500.0,
                          height: 20.0,
                          child: Divider(
                            color: Color.fromRGBO(42, 59, 71, 1.0),
                            thickness: 3, //Grosor
                          ),
                        ),

                        Container(
                          margin: EdgeInsets.only(top: 5),
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              'comprar entradas'.toUpperCase(),
                              style: TextStyle(
                                fontSize: 22,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
