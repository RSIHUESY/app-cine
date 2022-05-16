// ignore: file_names
// ignore_for_file: prefer_const_constructors, avoid_print, file_names, duplicate_ignore

import 'package:app_cine/paginas/bodyHome.dart';
import 'package:app_cine/paginas/bodyPremiere.dart';
import 'package:app_cine/paginas/bodyShopping.dart';
import 'package:app_cine/paginas/menuDrawer/bodyPerfil.dart';
import 'package:app_cine/paginas/signIn.dart';
import 'package:flutter/material.dart';

import 'menuDrawer/bodyConfig.dart';
import 'menuDrawer/bodyContactUs.dart';
import 'menuDrawer/bodyPromotions.dart';
import 'menuDrawer/bodySocial.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _actualPageInBottomNavigation = 1;
  int _actualPageInDrawer = -1;
  int _actualPage = 1;
  final List<String> _tittles = [
    "mis compras".toUpperCase(),
    "peliculas en cartelera".toUpperCase(),
    "Peliculas en estreno".toUpperCase(),
    "mi perfil".toUpperCase(),
    "promociones".toUpperCase(),
    "redes sociales".toUpperCase(),
    "contactanos".toUpperCase(),
    "configuracion".toUpperCase(),
  ];

  _pages(int pos) {
    switch (pos) {
      case 0:
        return BodyShopping();
      case 1:
        return BodyHome();
      case 2:
        return BodyPremiere();
      case 3:
        return BodyPerfil();
      case 4:
        return BodyPromotions();
      case 5:
        return BodySocial();
      case 6:
        return BodyContactUs();
      case 7:
        return BodyConfig();
    }
  }

  _selectPosInDrawer(int pos) {
    setState(() {
      _actualPageInBottomNavigation = 1;
      _actualPageInDrawer = pos;
      _actualPage = pos;
    });
    //PARA EL CIERRE AUTOMATICO DEL MENU LATERAL
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(25, 34, 41, 1),
        //MENU SUPERIOR
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(164, 23, 32, 1),
          shadowColor: Colors.red,
          toolbarHeight: 40,
          centerTitle: true,
          title: Text(
            _tittles[_actualPage],
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(239, 243, 245, 1),
            ),
          ),
        ),

        //MENU LATERAL
        drawer: Drawer(
          backgroundColor: Color.fromRGBO(25, 34, 41, 1),
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(164, 23, 32, 1),
                ),
                //Insertar logo, titulo y avatar
                child: Column(
                  children: [
                    //Insertar logo
                    Expanded(
                      child: Image.asset(
                        'images/logo.png',
                        fit: BoxFit.contain,
                        alignment: Alignment.center,
                      ),
                    ),
                    //Insertar titulo
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

              //PERFIL
              ListTile(
                textColor: Color.fromRGBO(239, 243, 245, 1),
                leading: Icon(
                  Icons.person,
                  color: Color.fromRGBO(239, 243, 245, 1),
                ),
                title: Text('Perfil'),
                selected: (_actualPageInDrawer == 3),
                onTap: () => {_selectPosInDrawer(3)},
              ),

              //PROMOCIONES
              ListTile(
                textColor: Color.fromRGBO(239, 243, 245, 1),
                leading: Icon(
                  Icons.wallet_giftcard,
                  color: Color.fromRGBO(239, 243, 245, 1),
                ),
                title: Text('Promociones'),
                selected: (_actualPageInDrawer == 4),
                onTap: () => {_selectPosInDrawer(4)},
              ),

              //SIGUENOS
              ListTile(
                textColor: Color.fromRGBO(239, 243, 245, 1),
                leading: Icon(
                  Icons.share,
                  color: Color.fromRGBO(239, 243, 245, 1),
                ),
                title: Text('Siguenos'),
                selected: (_actualPageInDrawer == 5),
                onTap: () => {_selectPosInDrawer(5)},
              ),

              //CONTACTANOS
              ListTile(
                textColor: Color.fromRGBO(239, 243, 245, 1),
                leading: Icon(
                  Icons.phone,
                  color: Color.fromRGBO(239, 243, 245, 1),
                ),
                title: Text('Contáctanos'),
                selected: (_actualPageInDrawer == 6),
                onTap: () => {_selectPosInDrawer(6)},
              ),

              //CONFIGURACION
              ListTile(
                textColor: Color.fromRGBO(239, 243, 245, 1),
                leading: Icon(
                  Icons.settings,
                  color: Color.fromRGBO(239, 243, 245, 1),
                ),
                title: Text('Configuración'),
                selected: (_actualPageInDrawer == 7),
                onTap: () => {_selectPosInDrawer(7)},
              ),

              //SALIR
              ListTile(
                textColor: Color.fromRGBO(239, 243, 245, 1),
                leading: Icon(
                  Icons.exit_to_app,
                  color: Color.fromRGBO(239, 243, 245, 1),
                ),
                title: Text('Salir'),
                onTap: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignIn()),
                  ),
                },
              )
            ],
          ),
        ),

        //CONTENIDO
        body: _pages(_actualPage),

        //MENU INFERIOR
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color.fromARGB(255, 20, 27, 32),
          unselectedItemColor: Color.fromRGBO(200, 205, 208, 1),
          fixedColor: Colors.red,
          onTap: (index) {
            setState(() {
              _actualPageInBottomNavigation = index;
              _actualPageInDrawer = -1;
              _actualPage = index;
            });
          },
          currentIndex: _actualPageInBottomNavigation,
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
