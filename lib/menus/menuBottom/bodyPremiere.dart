// ignore_for_file: file_names,
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
    var mediaQuery = MediaQuery.of(context);
    Size size = mediaQuery.size;
    double sizeWidth = size.width / 2.25;
    const String imgLoading = 'gifs/loading.gif';

    TextButton _btnVerMas(int id) {
      return TextButton(
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text("Ver más"),
            Icon(Icons.arrow_forward),
          ],
        ),
        style: TextButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 15, 13, 22),
          fixedSize: const Size.fromWidth(double.maxFinite),
        ),
      );
    }

    Card _buildCard(String img, String nameMovie, int id) {
      return Card(
        color: const Color.fromRGBO(33, 46, 54, 1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
          side: const BorderSide(color: Color.fromARGB(255, 114, 114, 114)),
        ),
        child: SizedBox(
          width: sizeWidth,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Column(
              children: <Widget>[
                //Portada de la pelicula
                FadeInImage(
                  image: NetworkImage(img),
                  placeholder: const AssetImage(imgLoading),
                  fit: BoxFit.cover,
                ),

                //Titulo de la pelicula
                Container(
                  height: 40,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(5),
                  child: Text(
                    nameMovie,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Color.fromRGBO(239, 243, 245, 1),
                    ),
                  ),
                ),

                //Botón
                _btnVerMas(id),
              ],
            ),
          ),
        ),
      );
    }

    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(25, 34, 41, 1),
        //CONTENIDO
        body: Center(
          child: ListView(
            // padding: const EdgeInsets.all(10.0),
            children: <Widget>[
              //PRE-VENTA
              Container(
                width: double.infinity,
                height: 30,
                alignment: Alignment.center,
                child: Text(
                  "pre-venta".toUpperCase(),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                decoration: const BoxDecoration(
                  color: Color(0xFF84142D),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  //PELICULAS
                  children: [
                    //PELICULA 1 y 2
                    Row(
                      children: <Widget>[
                        const Spacer(),
                        // PELICULA 1
                        _buildCard(
                          'https://i.pinimg.com/564x/8f/37/e9/8f37e9351b61494f08a0a7ed4991e2ff.jpg',
                          'Doctor strange 2: En el multiverso de la locura',
                          1,
                        ),

                        const Spacer(),
                        //PELICULA 2
                        _buildCard(
                          'https://i.pinimg.com/564x/26/a7/31/26a731cdcc22095f808aadf74134d0ec.jpg',
                          'Piratas del caribe: El curso del perla negra',
                          2,
                        ),
                        const Spacer(),
                      ],
                    ),

                    //PELICULA 3
                    Row(
                      children: [
                        const Spacer(),
                        _buildCard(
                          'https://i.pinimg.com/564x/26/a7/31/26a731cdcc22095f808aadf74134d0ec.jpg',
                          'Piratas del caribe: El curso del perla negra',
                          3,
                        ),
                        const Spacer(),
                      ],
                    ),
                  ],
                ),
              ),

              const Divider(height: 10),

              //PROXIMOS ESTRENOS
              Container(
                width: double.infinity,
                height: 30,
                alignment: Alignment.center,
                child: Text(
                  "próximos estrenos".toUpperCase(),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                decoration: const BoxDecoration(
                  color: Color(0xFF84142D),
                ),
              ),

              //PELICULAS 3 y 4
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Row(
                      children: <Widget>[
                        const Spacer(),
                        // PELICULA 3
                        _buildCard(
                          'https://i.pinimg.com/564x/8a/b2/3a/8ab23ac5cd49d5c50d26f92bed60fd86.jpg',
                          'Yo robot',
                          4,
                        ),

                        const Spacer(),
                        //PELICULA 4
                        _buildCard(
                          'https://i.pinimg.com/564x/98/07/77/9807778b6251273270fe6d8b639ea1e4.jpg',
                          'Jocker',
                          5,
                        ),
                        const Spacer(),
                      ],
                    ),

                    const Divider(height: 10),
                    //PELICULAS 5 y 6
                    Row(
                      children: <Widget>[
                        const Spacer(),
                        // PELICULA 5
                        _buildCard(
                          'https://i.pinimg.com/564x/91/e8/b2/91e8b28b4cb04f5bd07d7fcd3bf08e16.jpg',
                          'Avengers: EndGame',
                          6,
                        ),

                        const Spacer(),
                        //PELICULA 6
                        _buildCard(
                          'https://i.pinimg.com/736x/15/95/fd/1595fd24877c617050c75c4b3fc9f917.jpg',
                          'Frozen II',
                          7,
                        ),
                        const Spacer(),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
