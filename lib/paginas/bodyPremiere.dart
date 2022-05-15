// ignore: file_names
// ignore_for_file: prefer_const_constructors, avoid_print, file_names, duplicate_ignore
import 'package:flutter/material.dart';

class BodyPremiere extends StatefulWidget {
  const BodyPremiere({Key? key}) : super(key: key);

  @override
  State<BodyPremiere> createState() => _BodyPremiereState();
}

class _BodyPremiereState extends State<BodyPremiere> {
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
            padding: EdgeInsets.symmetric(
              horizontal: 25.0,
              vertical: 10.0,
            ),
            children: <Widget>[
              Column(
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

                  //Espacio divisor
                  Divider(height: 10.0),

                  //PELICULA 2
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

                  //Espacio divisor
                  Divider(height: 10.0),

                  //PELICULA 3
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
