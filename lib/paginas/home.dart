import 'package:app_cine/usuario/signIn.dart';
import 'package:flutter/material.dart';

import '../menus/menuBottom/bodyShopping.dart';
import '../menus/menuBottom/bodyHome.dart';
import '../menus/menuBottom/bodyPremiere.dart';
import '../menus/menuDrawer/bodyConfig.dart';
import '../menus/menuDrawer/bodyContactUs.dart';
import '../menus/menuDrawer/bodyPerfil.dart';
import '../menus/menuDrawer/bodyPromotions.dart';
import '../menus/menuDrawer/bodySocial.dart';

class Home extends StatefulWidget {
  static const routeName = 'Home';
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
    "proximamente".toUpperCase(),
    "mi perfil".toUpperCase(),
    "promociones".toUpperCase(),
    "Siguenos".toUpperCase(),
    "contactanos".toUpperCase(),
    "configuracion".toUpperCase(),
  ];

  _pages(int pos) {
    switch (pos) {
      case 0:
        return const BodyShopping();
      case 1:
        return const BodyHome();
      case 2:
        return const BodyPremiere();
      case 3:
        return const BodyPerfil();
      case 4:
        return const BodyPromotions();
      case 5:
        return const BodySocial();
      case 6:
        return const BodyContactUs();
      case 7:
        return const BodyConfig();
    }
  }

  _selectPosInDrawer(int pos) {
    setState(() {
      _actualPageInBottomNavigation = 1;
      _actualPageInDrawer = pos;
      _actualPage = pos;
    });
    //PARA EL CIERRE AUTOMATICO DEL MENU LATERAL AL SELECCIONAR UNA
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(25, 34, 41, 1),
        //MENU SUPERIOR
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(164, 23, 32, 1),
          shadowColor: Colors.red,
          toolbarHeight: 40,
          centerTitle: true,
          title: Text(
            _tittles[_actualPage],
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(239, 243, 245, 1),
            ),
          ),
        ),

        //MENU LATERAL
        drawer: Drawer(
          backgroundColor: const Color.fromRGBO(25, 34, 41, 1),
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: const BoxDecoration(
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
                    const Text(
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
                textColor: const Color.fromRGBO(239, 243, 245, 1),
                leading: const Icon(
                  Icons.person,
                  color: Color.fromRGBO(239, 243, 245, 1),
                ),
                title: const Text('Perfil'),
                selected: (_actualPageInDrawer == 3),
                onTap: () => {_selectPosInDrawer(3)},
              ),

              //PROMOCIONES
              ListTile(
                textColor: const Color.fromRGBO(239, 243, 245, 1),
                leading: const Icon(
                  Icons.wallet_giftcard,
                  color: Color.fromRGBO(239, 243, 245, 1),
                ),
                title: const Text('Promociones'),
                selected: (_actualPageInDrawer == 4),
                onTap: () => {_selectPosInDrawer(4)},
              ),

              //SIGUENOS
              ListTile(
                textColor: const Color.fromRGBO(239, 243, 245, 1),
                leading: const Icon(
                  Icons.share,
                  color: Color.fromRGBO(239, 243, 245, 1),
                ),
                title: const Text('Siguenos'),
                selected: (_actualPageInDrawer == 5),
                onTap: () => {_selectPosInDrawer(5)},
              ),

              //CONTACTANOS
              ListTile(
                textColor: const Color.fromRGBO(239, 243, 245, 1),
                leading: const Icon(
                  Icons.phone,
                  color: Color.fromRGBO(239, 243, 245, 1),
                ),
                title: const Text('Contáctanos'),
                selected: (_actualPageInDrawer == 6),
                onTap: () => {_selectPosInDrawer(6)},
              ),

              //CONFIGURACION
              ListTile(
                textColor: const Color.fromRGBO(239, 243, 245, 1),
                leading: const Icon(
                  Icons.settings,
                  color: Color.fromRGBO(239, 243, 245, 1),
                ),
                title: const Text('Configuración'),
                selected: (_actualPageInDrawer == 7),
                onTap: () => {_selectPosInDrawer(7)},
              ),

              //SALIR
              ListTile(
                textColor: const Color.fromRGBO(239, 243, 245, 1),
                leading: const Icon(
                  Icons.exit_to_app,
                  color: Color.fromRGBO(239, 243, 245, 1),
                ),
                title: const Text('Salir de mi cuenta'),
                onTap: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SignIn()),
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
          backgroundColor: const Color.fromARGB(255, 20, 27, 32),
          unselectedItemColor: const Color.fromRGBO(200, 205, 208, 1),
          fixedColor: _actualPageInDrawer > 2
              ? const Color.fromRGBO(200, 205, 208, 1)
              : Colors.red,
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
