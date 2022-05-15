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
  late String actualPageTitle = "Peliculas en cartelera".toUpperCase();
  late int actualPage = 1;
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
            actualPageTitle,
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

                  //Espacio divisor
                  Divider(height: 10.0),

                  //PELICULA 4
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

                  //PELICULA 5
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

        //MENU INFERIOR
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
