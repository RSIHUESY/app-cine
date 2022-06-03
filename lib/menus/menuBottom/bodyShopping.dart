// ignore_for_file: file_names
import 'package:flutter/material.dart';

class BodyShopping extends StatefulWidget {
  const BodyShopping({Key? key}) : super(key: key);

  @override
  State<BodyShopping> createState() => _BodyShoppingState();
}

class _BodyShoppingState extends State<BodyShopping> {
  late String actualPageTitle = "mis compras".toUpperCase();
  late int actualPage = 1;

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    Size size = mediaQuery.size;

    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(25, 34, 41, 1),
        //CONTENIDO
        body: ListView(
          padding: const EdgeInsets.symmetric(
            horizontal: 25.0,
            vertical: 10.0,
          ),
          children: <Widget>[
            Container(
              height: size.height * 0.6,
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  Text(
                    "Nada por aquí",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: const Color.fromARGB(255, 178, 178, 178),
                      fontSize: size.height / 14,
                    ),
                  ),
                  const Divider(height: 5),
                  const Icon(
                    Icons.sentiment_neutral_outlined,
                    color: Color.fromRGBO(178, 178, 178, 1),
                    size: 150,
                  ),
                  const Divider(height: 20),
                  Text(
                    "Las peliculas que compres las visualizaras aquí",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: const Color.fromARGB(255, 178, 178, 178),
                      fontSize: size.height / 40,
                    ),
                  ),
                ],
              ),
            ),

            /* Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //PELICULA 1
                  SizedBox(
                    child: InkWell(
                      onTap: () => {},
                      child: Container(
                        height: 150,
                        decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(color: Color.fromRGBO(33, 46, 54, 1)),
                          ],
                          border: Border.all(
                            color: Colors.black,
                            width: 2,
                          ),
                        ),
                        //INFORMACION
                        child: Row(
                          children: <Widget>[
                            //PORTADA DE LA PELICULA
                            Container(
                              margin: EdgeInsets.only(right: 10),
                              child: Image(
                                image: AssetImage('images/Pelicula1.jpg'),
                                alignment: Alignment.center,
                                fit: BoxFit.cover,
                                width: 130,
                                height: 150,
                              ),
                            ),

                            //INFORMACION DE LA PELICULA
                            Container(
                              padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                              width: 215,
                              child: Column(
                                children: [
                                  //TITULO DE LA PELICULA
                                  Text(
                                    'doctor strange en el multiverso de la locura'
                                        .toUpperCase(),
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Color.fromRGBO(239, 243, 245, 1),
                                    ),
                                  ),
                                  //DIVISION
                                  SizedBox(
                                    width: 200.0,
                                    height: 15.0,
                                    child: Divider(
                                      color: Color.fromRGBO(42, 59, 71, 1.0),
                                      thickness: 3, //Grosor
                                    ),
                                  ),
                                  //DESCRIPCION
                                  Expanded(
                                    child: Text(
                                      'Viaja a lo desconocido con el Doctor Strange, quien, con la ayuda de viejos y nuevos aliados místicos, atraviesa las alucinantes y peligrosas realidades alternativas del Multiverso para enfrentarse a un nuevo y misterioso adversario',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Color.fromRGBO(200, 205, 208, 1),
                                      ),
                                      maxLines: 5,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              )*/
          ],
        ),
      ),
    );
  }
}
