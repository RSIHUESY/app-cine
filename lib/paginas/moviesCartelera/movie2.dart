// ignore: file_names
import 'package:flutter/material.dart';
import 'movieEstructura.dart';

class Movie2 extends StatefulWidget {
  const Movie2({Key? key}) : super(key: key);

  @override
  State<Movie2> createState() => _Movie2State();
}

class _Movie2State extends State<Movie2> {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    Size size = mediaQuery.size;

    MovieEstructura movie2 = MovieEstructura(
      2,
      size,
      context,
      'images/Pelicula2.jpg',
      'animales fantasticos: los secretos de dumbledore',
      'Benedict Cumberbatch, Elizabeth Olsen, Chiwetel Ejiofor, Benedict Wong, Xochitl Gomez, Michael Stuhlbarg, Rachel McAdams, Patrick Stewart.',
    );

    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(25, 34, 41, 1),
        //CONTENIDO
        body: ListView(
          children: [
            movie2.mostrarMovie(3),
          ],
        ),
      ),
    );
  }
}
