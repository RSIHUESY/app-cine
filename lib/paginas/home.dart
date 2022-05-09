// ignore: file_names
// ignore_for_file: prefer_const_constructors, avoid_print, file_names, duplicate_ignore

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late String signUpUser;
  late String signUpEmail;
  late String signUpPass;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(25, 34, 41, 1),
      // drawerScrimColor: Colors.white,
      appBar: AppBar(),

      body: Center(
        child: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: 25.0,
            vertical: 25.0,
          ),
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //Titulo
                Text(
                  "peliculas en cartelera".toUpperCase(),
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(239, 243, 245, 1),
                  ),
                ),
                //Linea divisora
                SizedBox(
                  width: 500.0,
                  height: 15.0,
                  child: Divider(
                    color: Color.fromRGBO(42, 59, 71, 1.0),
                    thickness: 3.0, //Grosor
                  ),
                ),
                //Espacio divisor
                Divider(height: 15.0),
                //Pelicula 1
                Column(
                  children: [
                    Container(
                      height: 190,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        boxShadow: const [
                          BoxShadow(color: Color.fromRGBO(33, 46, 54, 1)),
                        ],
                        border: Border.all(
                          color: Colors.black,
                          // color: Color.fromARGB(255, 59, 82, 99),
                          width: 2,
                        ),
                      ),
                      child: Row(
                        children: <Widget>[
                          CircleAvatar(
                            backgroundColor: Colors.transparent,
                            backgroundImage: AssetImage('images/logo.png'),
                            radius: 65,
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                            width: 215,
                            child: Column(
                              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'doctor strange en el multiverso de la locura'
                                      .toUpperCase(),
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Color.fromRGBO(239, 243, 245, 1),
                                  ),
                                ),
                                SizedBox(
                                  width: 200.0,
                                  height: 10.0,
                                  child: Divider(
                                    color: Color.fromRGBO(42, 59, 71, 1.0),
                                    thickness: 3, //Grosor
                                  ),
                                ),
                                Text(
                                  'Un viejo amigo convertido en enemigo pone fin a sus planes y hace que Strange desate un mal indescriptible...',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: Color.fromRGBO(200, 205, 208, 1),
                                  ),
                                ),
                                SizedBox(
                                  width: 200.0,
                                  height: 10.0,
                                  child: Divider(
                                    color: Color.fromRGBO(42, 59, 71, 1.0),
                                    thickness: 3, //Grosor
                                  ),
                                ),
                                Text(
                                  'horarios disponibles'.toUpperCase(),
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: Color.fromRGBO(239, 243, 245, 1),
                                  ),
                                ),
                                Divider(height: 5),
                                Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizedBox(
                                          height: 28,
                                          child: TextButton(
                                            onPressed: () => {},
                                            autofocus: false,
                                            child: Text(
                                              "1:00pm",
                                              style: TextStyle(fontSize: 10),
                                            ),
                                            style: TextButton.styleFrom(
                                              backgroundColor: Color.fromRGBO(
                                                  164, 23, 32, 1),
                                              primary: Color.fromARGB(
                                                  255, 224, 229, 233),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 28,
                                          child: TextButton(
                                            onPressed: () => {},
                                            autofocus: false,
                                            child: Text(
                                              "2:00pm",
                                              style: TextStyle(fontSize: 10),
                                            ),
                                            style: TextButton.styleFrom(
                                              backgroundColor: Color.fromRGBO(
                                                  164, 23, 32, 1),
                                              primary: Color.fromARGB(
                                                  255, 224, 229, 233),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 28,
                                          child: TextButton(
                                            onPressed: () => {},
                                            autofocus: false,
                                            child: Text(
                                              "5:00pm",
                                              style: TextStyle(fontSize: 10),
                                            ),
                                            style: TextButton.styleFrom(
                                              backgroundColor: Color.fromRGBO(
                                                  164, 23, 32, 1),
                                              primary: Color.fromARGB(
                                                  255, 224, 229, 233),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Divider(height: 3),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizedBox(
                                          height: 28,
                                          child: TextButton(
                                            onPressed: () => {},
                                            autofocus: false,
                                            child: Text(
                                              "6:00pm",
                                              style: TextStyle(fontSize: 10),
                                            ),
                                            style: TextButton.styleFrom(
                                              backgroundColor: Color.fromRGBO(
                                                  164, 23, 32, 1),
                                              primary: Color.fromARGB(
                                                  255, 224, 229, 233),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 28,
                                          child: TextButton(
                                            onPressed: () => {},
                                            autofocus: false,
                                            child: Text(
                                              "8:00pm",
                                              style: TextStyle(fontSize: 10),
                                            ),
                                            style: TextButton.styleFrom(
                                              backgroundColor: Color.fromRGBO(
                                                  164, 23, 32, 1),
                                              primary: Color.fromARGB(
                                                  255, 224, 229, 233),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 28,
                                          child: TextButton(
                                            onPressed: () => {},
                                            autofocus: false,
                                            child: Text(
                                              "10:00pm",
                                              style: TextStyle(fontSize: 10),
                                            ),
                                            style: TextButton.styleFrom(
                                              backgroundColor: Color.fromRGBO(
                                                  164, 23, 32, 1),
                                              primary: Color.fromARGB(
                                                  255, 224, 229, 233),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                //Espacio divisor
                Divider(height: 5.0),
                //Pelicula 2
                Column(
                  children: [
                    Container(
                      height: 190,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        boxShadow: const [
                          BoxShadow(color: Color.fromRGBO(33, 46, 54, 1)),
                        ],
                        border: Border.all(
                          color: Colors.black,
                          // color: Color.fromARGB(255, 59, 82, 99),
                          width: 2,
                        ),
                      ),
                      child: Row(
                        children: <Widget>[
                          CircleAvatar(
                            backgroundColor: Colors.transparent,
                            backgroundImage: AssetImage('images/logo.png'),
                            radius: 65,
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                            width: 215,
                            child: Column(
                              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'nombre de pelicula 2'.toUpperCase(),
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Color.fromRGBO(239, 243, 245, 1),
                                  ),
                                ),
                                SizedBox(
                                  width: 200.0,
                                  height: 10.0,
                                  child: Divider(
                                    color: Color.fromRGBO(42, 59, 71, 1.0),
                                    thickness: 3, //Grosor
                                  ),
                                ),
                                Text(
                                  'Un viejo amigo convertido en enemigo pone fin a sus planes y hace que Strange desate un mal indescriptible...',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: Color.fromRGBO(200, 205, 208, 1),
                                  ),
                                ),
                                SizedBox(
                                  width: 200.0,
                                  height: 10.0,
                                  child: Divider(
                                    color: Color.fromRGBO(42, 59, 71, 1.0),
                                    thickness: 3, //Grosor
                                  ),
                                ),
                                Text(
                                  'horarios disponibles'.toUpperCase(),
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: Color.fromRGBO(239, 243, 245, 1),
                                  ),
                                ),
                                Divider(height: 5),
                                Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizedBox(
                                          height: 28,
                                          child: TextButton(
                                            onPressed: () => {},
                                            autofocus: false,
                                            child: Text(
                                              "1:00pm",
                                              style: TextStyle(fontSize: 10),
                                            ),
                                            style: TextButton.styleFrom(
                                              backgroundColor: Color.fromRGBO(
                                                  164, 23, 32, 1),
                                              primary: Color.fromARGB(
                                                  255, 224, 229, 233),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 28,
                                          child: TextButton(
                                            onPressed: () => {},
                                            autofocus: false,
                                            child: Text(
                                              "2:00pm",
                                              style: TextStyle(fontSize: 10),
                                            ),
                                            style: TextButton.styleFrom(
                                              backgroundColor: Color.fromRGBO(
                                                  164, 23, 32, 1),
                                              primary: Color.fromARGB(
                                                  255, 224, 229, 233),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 28,
                                          child: TextButton(
                                            onPressed: () => {},
                                            autofocus: false,
                                            child: Text(
                                              "5:00pm",
                                              style: TextStyle(fontSize: 10),
                                            ),
                                            style: TextButton.styleFrom(
                                              backgroundColor: Color.fromRGBO(
                                                  164, 23, 32, 1),
                                              primary: Color.fromARGB(
                                                  255, 224, 229, 233),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Divider(height: 3),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizedBox(
                                          height: 28,
                                          child: TextButton(
                                            onPressed: () => {},
                                            autofocus: false,
                                            child: Text(
                                              "6:00pm",
                                              style: TextStyle(fontSize: 10),
                                            ),
                                            style: TextButton.styleFrom(
                                              backgroundColor: Color.fromRGBO(
                                                  164, 23, 32, 1),
                                              primary: Color.fromARGB(
                                                  255, 224, 229, 233),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 28,
                                          child: TextButton(
                                            onPressed: () => {},
                                            autofocus: false,
                                            child: Text(
                                              "8:00pm",
                                              style: TextStyle(fontSize: 10),
                                            ),
                                            style: TextButton.styleFrom(
                                              backgroundColor: Color.fromRGBO(
                                                  164, 23, 32, 1),
                                              primary: Color.fromARGB(
                                                  255, 224, 229, 233),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 28,
                                          child: TextButton(
                                            onPressed: () => {},
                                            autofocus: false,
                                            child: Text(
                                              "10:00pm",
                                              style: TextStyle(fontSize: 10),
                                            ),
                                            style: TextButton.styleFrom(
                                              backgroundColor: Color.fromRGBO(
                                                  164, 23, 32, 1),
                                              primary: Color.fromARGB(
                                                  255, 224, 229, 233),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                //Espacio divisor
                Divider(height: 5.0),
                //Pelicula 3
                Column(
                  children: [
                    Container(
                      height: 190,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        boxShadow: const [
                          BoxShadow(color: Color.fromRGBO(33, 46, 54, 1)),
                        ],
                        border: Border.all(
                          color: Colors.black,
                          // color: Color.fromARGB(255, 59, 82, 99),
                          width: 2,
                        ),
                      ),
                      child: Row(
                        children: <Widget>[
                          CircleAvatar(
                            backgroundColor: Colors.transparent,
                            backgroundImage: AssetImage('images/logo.png'),
                            radius: 65,
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                            width: 215,
                            child: Column(
                              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'nombre de pelicula 3'.toUpperCase(),
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Color.fromRGBO(239, 243, 245, 1),
                                  ),
                                ),
                                SizedBox(
                                  width: 200.0,
                                  height: 10.0,
                                  child: Divider(
                                    color: Color.fromRGBO(42, 59, 71, 1.0),
                                    thickness: 3, //Grosor
                                  ),
                                ),
                                Text(
                                  'Un viejo amigo convertido en enemigo pone fin a sus planes y hace que Strange desate un mal indescriptible...',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: Color.fromRGBO(200, 205, 208, 1),
                                  ),
                                ),
                                SizedBox(
                                  width: 200.0,
                                  height: 10.0,
                                  child: Divider(
                                    color: Color.fromRGBO(42, 59, 71, 1.0),
                                    thickness: 3, //Grosor
                                  ),
                                ),
                                Text(
                                  'horarios disponibles'.toUpperCase(),
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: Color.fromRGBO(239, 243, 245, 1),
                                  ),
                                ),
                                Divider(height: 5),
                                Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizedBox(
                                          height: 28,
                                          child: TextButton(
                                            onPressed: () => {},
                                            autofocus: false,
                                            child: Text(
                                              "1:00pm",
                                              style: TextStyle(fontSize: 10),
                                            ),
                                            style: TextButton.styleFrom(
                                              backgroundColor: Color.fromRGBO(
                                                  164, 23, 32, 1),
                                              primary: Color.fromARGB(
                                                  255, 224, 229, 233),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 28,
                                          child: TextButton(
                                            onPressed: () => {},
                                            autofocus: false,
                                            child: Text(
                                              "2:00pm",
                                              style: TextStyle(fontSize: 10),
                                            ),
                                            style: TextButton.styleFrom(
                                              backgroundColor: Color.fromRGBO(
                                                  164, 23, 32, 1),
                                              primary: Color.fromARGB(
                                                  255, 224, 229, 233),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 28,
                                          child: TextButton(
                                            onPressed: () => {},
                                            autofocus: false,
                                            child: Text(
                                              "5:00pm",
                                              style: TextStyle(fontSize: 10),
                                            ),
                                            style: TextButton.styleFrom(
                                              backgroundColor: Color.fromRGBO(
                                                  164, 23, 32, 1),
                                              primary: Color.fromARGB(
                                                  255, 224, 229, 233),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Divider(height: 3),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizedBox(
                                          height: 28,
                                          child: TextButton(
                                            onPressed: () => {},
                                            autofocus: false,
                                            child: Text(
                                              "6:00pm",
                                              style: TextStyle(fontSize: 10),
                                            ),
                                            style: TextButton.styleFrom(
                                              backgroundColor: Color.fromRGBO(
                                                  164, 23, 32, 1),
                                              primary: Color.fromARGB(
                                                  255, 224, 229, 233),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 28,
                                          child: TextButton(
                                            onPressed: () => {},
                                            autofocus: false,
                                            child: Text(
                                              "8:00pm",
                                              style: TextStyle(fontSize: 10),
                                            ),
                                            style: TextButton.styleFrom(
                                              backgroundColor: Color.fromRGBO(
                                                  164, 23, 32, 1),
                                              primary: Color.fromARGB(
                                                  255, 224, 229, 233),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 28,
                                          child: TextButton(
                                            onPressed: () => {},
                                            autofocus: false,
                                            child: Text(
                                              "10:00pm",
                                              style: TextStyle(fontSize: 10),
                                            ),
                                            style: TextButton.styleFrom(
                                              backgroundColor: Color.fromRGBO(
                                                  164, 23, 32, 1),
                                              primary: Color.fromARGB(
                                                  255, 224, 229, 233),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                //Espacio divisor
                Divider(height: 5.0),
                //Pelicula 4
                Column(
                  children: [
                    Container(
                      height: 190,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        boxShadow: const [
                          BoxShadow(color: Color.fromRGBO(33, 46, 54, 1)),
                        ],
                        border: Border.all(
                          color: Colors.black,
                          // color: Color.fromARGB(255, 59, 82, 99),
                          width: 2,
                        ),
                      ),
                      child: Row(
                        children: <Widget>[
                          CircleAvatar(
                            backgroundColor: Colors.transparent,
                            backgroundImage: AssetImage('images/logo.png'),
                            radius: 65,
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                            width: 215,
                            child: Column(
                              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'nombre de pelicula 4'.toUpperCase(),
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Color.fromRGBO(239, 243, 245, 1),
                                  ),
                                ),
                                SizedBox(
                                  width: 200.0,
                                  height: 10.0,
                                  child: Divider(
                                    color: Color.fromRGBO(42, 59, 71, 1.0),
                                    thickness: 3, //Grosor
                                  ),
                                ),
                                Text(
                                  'Un viejo amigo convertido en enemigo pone fin a sus planes y hace que Strange desate un mal indescriptible...',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: Color.fromRGBO(200, 205, 208, 1),
                                  ),
                                ),
                                SizedBox(
                                  width: 200.0,
                                  height: 10.0,
                                  child: Divider(
                                    color: Color.fromRGBO(42, 59, 71, 1.0),
                                    thickness: 3, //Grosor
                                  ),
                                ),
                                Text(
                                  'horarios disponibles'.toUpperCase(),
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: Color.fromRGBO(239, 243, 245, 1),
                                  ),
                                ),
                                Divider(height: 5),
                                Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizedBox(
                                          height: 28,
                                          child: TextButton(
                                            onPressed: () => {},
                                            autofocus: false,
                                            child: Text(
                                              "1:00pm",
                                              style: TextStyle(fontSize: 10),
                                            ),
                                            style: TextButton.styleFrom(
                                              backgroundColor: Color.fromRGBO(
                                                  164, 23, 32, 1),
                                              primary: Color.fromARGB(
                                                  255, 224, 229, 233),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 28,
                                          child: TextButton(
                                            onPressed: () => {},
                                            autofocus: false,
                                            child: Text(
                                              "2:00pm",
                                              style: TextStyle(fontSize: 10),
                                            ),
                                            style: TextButton.styleFrom(
                                              backgroundColor: Color.fromRGBO(
                                                  164, 23, 32, 1),
                                              primary: Color.fromARGB(
                                                  255, 224, 229, 233),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 28,
                                          child: TextButton(
                                            onPressed: () => {},
                                            autofocus: false,
                                            child: Text(
                                              "5:00pm",
                                              style: TextStyle(fontSize: 10),
                                            ),
                                            style: TextButton.styleFrom(
                                              backgroundColor: Color.fromRGBO(
                                                  164, 23, 32, 1),
                                              primary: Color.fromARGB(
                                                  255, 224, 229, 233),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Divider(height: 3),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizedBox(
                                          height: 28,
                                          child: TextButton(
                                            onPressed: () => {},
                                            autofocus: false,
                                            child: Text(
                                              "6:00pm",
                                              style: TextStyle(fontSize: 10),
                                            ),
                                            style: TextButton.styleFrom(
                                              backgroundColor: Color.fromRGBO(
                                                  164, 23, 32, 1),
                                              primary: Color.fromARGB(
                                                  255, 224, 229, 233),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 28,
                                          child: TextButton(
                                            onPressed: () => {},
                                            autofocus: false,
                                            child: Text(
                                              "8:00pm",
                                              style: TextStyle(fontSize: 10),
                                            ),
                                            style: TextButton.styleFrom(
                                              backgroundColor: Color.fromRGBO(
                                                  164, 23, 32, 1),
                                              primary: Color.fromARGB(
                                                  255, 224, 229, 233),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 28,
                                          child: TextButton(
                                            onPressed: () => {},
                                            autofocus: false,
                                            child: Text(
                                              "10:00pm",
                                              style: TextStyle(fontSize: 10),
                                            ),
                                            style: TextButton.styleFrom(
                                              backgroundColor: Color.fromRGBO(
                                                  164, 23, 32, 1),
                                              primary: Color.fromARGB(
                                                  255, 224, 229, 233),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                //Espacio divisor
                Divider(height: 5.0),
                //Pelicula 5
                Column(
                  children: [
                    Container(
                      height: 190,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        boxShadow: const [
                          BoxShadow(color: Color.fromRGBO(33, 46, 54, 1)),
                        ],
                        border: Border.all(
                          color: Colors.black,
                          // color: Color.fromARGB(255, 59, 82, 99),
                          width: 2,
                        ),
                      ),
                      child: Row(
                        children: <Widget>[
                          CircleAvatar(
                            backgroundColor: Colors.transparent,
                            backgroundImage: AssetImage('images/logo.png'),
                            radius: 65,
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                            width: 215,
                            child: Column(
                              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'nombre de pelicula 6'.toUpperCase(),
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Color.fromRGBO(239, 243, 245, 1),
                                  ),
                                ),
                                SizedBox(
                                  width: 200.0,
                                  height: 10.0,
                                  child: Divider(
                                    color: Color.fromRGBO(42, 59, 71, 1.0),
                                    thickness: 3, //Grosor
                                  ),
                                ),
                                Text(
                                  'Un viejo amigo convertido en enemigo pone fin a sus planes y hace que Strange desate un mal indescriptible...',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: Color.fromRGBO(200, 205, 208, 1),
                                  ),
                                ),
                                SizedBox(
                                  width: 200.0,
                                  height: 10.0,
                                  child: Divider(
                                    color: Color.fromRGBO(42, 59, 71, 1.0),
                                    thickness: 3, //Grosor
                                  ),
                                ),
                                Text(
                                  'horarios disponibles'.toUpperCase(),
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: Color.fromRGBO(239, 243, 245, 1),
                                  ),
                                ),
                                Divider(height: 5),
                                Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizedBox(
                                          height: 28,
                                          child: TextButton(
                                            onPressed: () => {},
                                            autofocus: false,
                                            child: Text(
                                              "1:00pm",
                                              style: TextStyle(fontSize: 10),
                                            ),
                                            style: TextButton.styleFrom(
                                              backgroundColor: Color.fromRGBO(
                                                  164, 23, 32, 1),
                                              primary: Color.fromARGB(
                                                  255, 224, 229, 233),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 28,
                                          child: TextButton(
                                            onPressed: () => {},
                                            autofocus: false,
                                            child: Text(
                                              "2:00pm",
                                              style: TextStyle(fontSize: 10),
                                            ),
                                            style: TextButton.styleFrom(
                                              backgroundColor: Color.fromRGBO(
                                                  164, 23, 32, 1),
                                              primary: Color.fromARGB(
                                                  255, 224, 229, 233),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 28,
                                          child: TextButton(
                                            onPressed: () => {},
                                            autofocus: false,
                                            child: Text(
                                              "5:00pm",
                                              style: TextStyle(fontSize: 10),
                                            ),
                                            style: TextButton.styleFrom(
                                              backgroundColor: Color.fromRGBO(
                                                  164, 23, 32, 1),
                                              primary: Color.fromARGB(
                                                  255, 224, 229, 233),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Divider(height: 3),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizedBox(
                                          height: 28,
                                          child: TextButton(
                                            onPressed: () => {},
                                            autofocus: false,
                                            child: Text(
                                              "6:00pm",
                                              style: TextStyle(fontSize: 10),
                                            ),
                                            style: TextButton.styleFrom(
                                              backgroundColor: Color.fromRGBO(
                                                  164, 23, 32, 1),
                                              primary: Color.fromARGB(
                                                  255, 224, 229, 233),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 28,
                                          child: TextButton(
                                            onPressed: () => {},
                                            autofocus: false,
                                            child: Text(
                                              "8:00pm",
                                              style: TextStyle(fontSize: 10),
                                            ),
                                            style: TextButton.styleFrom(
                                              backgroundColor: Color.fromRGBO(
                                                  164, 23, 32, 1),
                                              primary: Color.fromARGB(
                                                  255, 224, 229, 233),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 28,
                                          child: TextButton(
                                            onPressed: () => {},
                                            autofocus: false,
                                            child: Text(
                                              "10:00pm",
                                              style: TextStyle(fontSize: 10),
                                            ),
                                            style: TextButton.styleFrom(
                                              backgroundColor: Color.fromRGBO(
                                                  164, 23, 32, 1),
                                              primary: Color.fromARGB(
                                                  255, 224, 229, 233),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                //Espacio divisor
                Divider(height: 5.0),
                //Pelicula 6
                Column(
                  children: [
                    Container(
                      height: 190,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        boxShadow: const [
                          BoxShadow(color: Color.fromRGBO(33, 46, 54, 1)),
                        ],
                        border: Border.all(
                          color: Colors.black,
                          // color: Color.fromARGB(255, 59, 82, 99),
                          width: 2,
                        ),
                      ),
                      child: Row(
                        children: <Widget>[
                          CircleAvatar(
                            backgroundColor: Colors.transparent,
                            backgroundImage: AssetImage('images/logo.png'),
                            radius: 65,
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                            width: 215,
                            child: Column(
                              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'nombre de pelicula 6'.toUpperCase(),
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Color.fromRGBO(239, 243, 245, 1),
                                  ),
                                ),
                                SizedBox(
                                  width: 200.0,
                                  height: 10.0,
                                  child: Divider(
                                    color: Color.fromRGBO(42, 59, 71, 1.0),
                                    thickness: 3, //Grosor
                                  ),
                                ),
                                Text(
                                  'Un viejo amigo convertido en enemigo pone fin a sus planes y hace que Strange desate un mal indescriptible...',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: Color.fromRGBO(200, 205, 208, 1),
                                  ),
                                ),
                                SizedBox(
                                  width: 200.0,
                                  height: 10.0,
                                  child: Divider(
                                    color: Color.fromRGBO(42, 59, 71, 1.0),
                                    thickness: 3, //Grosor
                                  ),
                                ),
                                Text(
                                  'horarios disponibles'.toUpperCase(),
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: Color.fromRGBO(239, 243, 245, 1),
                                  ),
                                ),
                                Divider(height: 5),
                                Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizedBox(
                                          height: 28,
                                          child: TextButton(
                                            onPressed: () => {},
                                            autofocus: false,
                                            child: Text(
                                              "1:00pm",
                                              style: TextStyle(fontSize: 10),
                                            ),
                                            style: TextButton.styleFrom(
                                              backgroundColor: Color.fromRGBO(
                                                  164, 23, 32, 1),
                                              primary: Color.fromARGB(
                                                  255, 224, 229, 233),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 28,
                                          child: TextButton(
                                            onPressed: () => {},
                                            autofocus: false,
                                            child: Text(
                                              "2:00pm",
                                              style: TextStyle(fontSize: 10),
                                            ),
                                            style: TextButton.styleFrom(
                                              backgroundColor: Color.fromRGBO(
                                                  164, 23, 32, 1),
                                              primary: Color.fromARGB(
                                                  255, 224, 229, 233),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 28,
                                          child: TextButton(
                                            onPressed: () => {},
                                            autofocus: false,
                                            child: Text(
                                              "5:00pm",
                                              style: TextStyle(fontSize: 10),
                                            ),
                                            style: TextButton.styleFrom(
                                              backgroundColor: Color.fromRGBO(
                                                  164, 23, 32, 1),
                                              primary: Color.fromARGB(
                                                  255, 224, 229, 233),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Divider(height: 3),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizedBox(
                                          height: 28,
                                          child: TextButton(
                                            onPressed: () => {},
                                            autofocus: false,
                                            child: Text(
                                              "6:00pm",
                                              style: TextStyle(fontSize: 10),
                                            ),
                                            style: TextButton.styleFrom(
                                              backgroundColor: Color.fromRGBO(
                                                  164, 23, 32, 1),
                                              primary: Color.fromARGB(
                                                  255, 224, 229, 233),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 28,
                                          child: TextButton(
                                            onPressed: () => {},
                                            autofocus: false,
                                            child: Text(
                                              "8:00pm",
                                              style: TextStyle(fontSize: 10),
                                            ),
                                            style: TextButton.styleFrom(
                                              backgroundColor: Color.fromRGBO(
                                                  164, 23, 32, 1),
                                              primary: Color.fromARGB(
                                                  255, 224, 229, 233),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 28,
                                          child: TextButton(
                                            onPressed: () => {},
                                            autofocus: false,
                                            child: Text(
                                              "10:00pm",
                                              style: TextStyle(fontSize: 10),
                                            ),
                                            style: TextButton.styleFrom(
                                              backgroundColor: Color.fromRGBO(
                                                  164, 23, 32, 1),
                                              primary: Color.fromARGB(
                                                  255, 224, 229, 233),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromRGBO(164, 23, 32, 1),
        fixedColor: Colors.white,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: "COMPRAS",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: "INICIO",
            activeIcon: Home(),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.movie_creation),
            label: "ESTRENOS",
          ),
        ],
      ),
    );
  }
}
