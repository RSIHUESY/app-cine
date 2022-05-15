// ignore: file_names
// ignore_for_file: prefer_const_constructors, avoid_print, file_names, duplicate_ignore
import 'package:app_cine/paginas/bodyHome.dart';
import 'package:app_cine/paginas/bodyPremiere.dart';
import 'package:app_cine/paginas/bodyShopping.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<String> _tittles = [
    "mis compras".toUpperCase(),
    "peliculas en cartelera".toUpperCase(),
    "Peliculas en estreno".toUpperCase(),
  ];
  final List<Widget> _pages = [
    BodyShopping(),
    BodyHome(),
    BodyPremiere(),
  ];
  int _actualPage = 1;

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
                  Icons.share,
                  color: Color.fromRGBO(239, 243, 245, 1),
                ),
                title: Text('Siguenos'),
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

        //CONTENIDO
        body: _pages[_actualPage],

        //MENU INFERIOR
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color.fromARGB(255, 20, 27, 32),
          unselectedItemColor: Color.fromRGBO(200, 205, 208, 1),
          fixedColor: Colors.red,
          onTap: (index) {
            setState(() {
              _actualPage = index;
            });
          },
          currentIndex: _actualPage,
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
