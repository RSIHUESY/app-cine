// ignore: file_names
// ignore_for_file: prefer_const_constructors, avoid_print, file_names, duplicate_ignore

import 'dart:math';

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
  late String actualPageTitle = "Peliculas en cartelera".toUpperCase();
  late int actualPage = 1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(25, 34, 41, 1),
        // drawerScrimColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(164, 23, 32, 1),
          shadowColor: Colors.red,
          toolbarHeight: 40,
          centerTitle: true,
          title: Text(
            actualPageTitle,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(239, 243, 245, 1),
            ),
          ),
        ),
        //Menu
        drawer: Drawer(
          backgroundColor: Color.fromRGBO(25, 34, 41, 1),
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(164, 23, 32, 1),
                ),
                child: Column(
                  children: [
                    Expanded(
                      child: Image.asset(
                        'images/logo.png',
                        fit: BoxFit.contain,
                        alignment: Alignment.center,
                      ),
                    ),
                    Text(
                      "CINELAND",
                      style: TextStyle(
                        fontFamily: 'FugazOne',
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(225, 244, 67, 54),
                      ),
                    ),
                  ],
                ),
              ),
              //Perfil
              ListTile(
                textColor: Color.fromRGBO(239, 243, 245, 1),
                leading: Icon(
                  Icons.person,
                  color: Color.fromRGBO(239, 243, 245, 1),
                ),
                title: Text('Perfil'),
                onTap: () {},
              ),
              //Promociones
              ListTile(
                textColor: Color.fromRGBO(239, 243, 245, 1),
                leading: Icon(
                  Icons.wallet_giftcard,
                  color: Color.fromRGBO(239, 243, 245, 1),
                ),
                title: Text('Promociones'),
                onTap: () {},
              ),
              //Siguenos
              ListTile(
                textColor: Color.fromRGBO(239, 243, 245, 1),
                leading: Icon(
                  Icons.wallet_giftcard,
                  color: Color.fromRGBO(239, 243, 245, 1),
                ),
                title: Text('Promociones'),
                onTap: () {},
              ),
              ListTile(
                textColor: Color.fromRGBO(239, 243, 245, 1),
                leading: Icon(
                  Icons.phone,
                  color: Color.fromRGBO(239, 243, 245, 1),
                ),
                title: Text('Contáctanos'),
                onTap: () {},
              ),
              //Configuracion
              Container(
                transformAlignment: Alignment.bottomCenter,
                child: ListTile(
                  textColor: Color.fromRGBO(239, 243, 245, 1),
                  dense: true,
                  leading: Icon(
                    Icons.settings,
                    color: Color.fromRGBO(239, 243, 245, 1),
                  ),
                  title: Text('Configuración'),
                  onTap: () {},
                ),
              ),
            ],
          ),
        ),

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
                                                      BorderRadius.circular(
                                                          10.0),
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
                                                      BorderRadius.circular(
                                                          10.0),
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
                                                      BorderRadius.circular(
                                                          10.0),
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
                                                      BorderRadius.circular(
                                                          10.0),
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
                                                      BorderRadius.circular(
                                                          10.0),
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
                                                      BorderRadius.circular(
                                                          10.0),
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
                                                      BorderRadius.circular(
                                                          10.0),
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
                                                      BorderRadius.circular(
                                                          10.0),
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
                                                      BorderRadius.circular(
                                                          10.0),
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
                                                      BorderRadius.circular(
                                                          10.0),
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
                                                      BorderRadius.circular(
                                                          10.0),
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
                                                      BorderRadius.circular(
                                                          10.0),
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
                                                      BorderRadius.circular(
                                                          10.0),
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
                                                      BorderRadius.circular(
                                                          10.0),
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
                                                      BorderRadius.circular(
                                                          10.0),
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
                                                      BorderRadius.circular(
                                                          10.0),
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
                                                      BorderRadius.circular(
                                                          10.0),
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
                                                      BorderRadius.circular(
                                                          10.0),
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
                                                      BorderRadius.circular(
                                                          10.0),
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
                                                      BorderRadius.circular(
                                                          10.0),
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
                                                      BorderRadius.circular(
                                                          10.0),
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
                                                      BorderRadius.circular(
                                                          10.0),
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
                                                      BorderRadius.circular(
                                                          10.0),
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
                                                      BorderRadius.circular(
                                                          10.0),
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
                                                      BorderRadius.circular(
                                                          10.0),
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
                                                      BorderRadius.circular(
                                                          10.0),
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
                                                      BorderRadius.circular(
                                                          10.0),
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
                                                      BorderRadius.circular(
                                                          10.0),
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
                                                      BorderRadius.circular(
                                                          10.0),
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
                                                      BorderRadius.circular(
                                                          10.0),
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
                                                      BorderRadius.circular(
                                                          10.0),
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
                                                      BorderRadius.circular(
                                                          10.0),
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
                                                      BorderRadius.circular(
                                                          10.0),
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
                                                      BorderRadius.circular(
                                                          10.0),
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
                                                      BorderRadius.circular(
                                                          10.0),
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
                                                      BorderRadius.circular(
                                                          10.0),
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
          backgroundColor: Color.fromARGB(255, 20, 27, 32),
          unselectedItemColor: Color.fromRGBO(200, 205, 208, 1),
          fixedColor: Colors.red,
          items: const [
            //Compras
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: "COMPRAS",
            ),
            //Inicio
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: "INICIO",
              activeIcon: Home(),
            ),
            //Estrenos
            BottomNavigationBarItem(
              icon: Icon(Icons.movie_creation),
              label: "ESTRENOS",
            ),
          ],
        ),
      ),
    );
  }
}
