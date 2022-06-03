// ignore_for_file: file_names

import 'package:flutter/material.dart';

class MovieEstructura {
  late int id;
  late Size size;
  late String imgRuta;
  late String nameMovie;
  late String descMovie;

  MovieEstructura(
      this.id, this.size, this.imgRuta, this.nameMovie, this.descMovie);

  mostrarMovie() {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          //PORTADA
          SizedBox(
            child: Container(
              width: size.width * 0.9,
              height: size.height * 0.5,
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 15,
                    offset: Offset(0, 10),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(25)),
                child: FadeInImage(
                  placeholder: const AssetImage("gifs/loading.gif"),
                  image: AssetImage(imgRuta),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),

          const Divider(height: 10),
          //INFORMACION
          SizedBox(
            child: Container(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  //TITULO DE LA PELICULA
                  Text(
                    nameMovie.toUpperCase(),
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 24,
                      color: Color.fromRGBO(239, 243, 245, 1),
                    ),
                  ),

                  //Division
                  const Divider(
                    color: Color.fromRGBO(42, 59, 71, 1.0),
                    thickness: 3, //Grosor
                  ),

                  //DESCRIPCION
                  Container(
                    padding: const EdgeInsets.all(15),
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromRGBO(30, 42, 50, 1),
                        ),
                      ],
                    ),
                    child: Text(
                      descMovie,
                      textAlign: TextAlign.left,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Color.fromRGBO(200, 205, 208, 1),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          //BOTON MAS INFORMACION
          SizedBox(
            child: TextButton(
              onPressed: () {},
              child: const Text("COMPRAR"),
              style: TextButton.styleFrom(
                backgroundColor: const Color.fromRGBO(164, 23, 32, 1),
                primary: const Color.fromARGB(255, 224, 229, 233),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: const BorderSide(
                    color: Color.fromRGBO(180, 49, 58, 1),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
