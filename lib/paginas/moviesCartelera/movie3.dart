import 'package:flutter/material.dart';
import 'movieEstructura.dart';

class Movie3 extends StatefulWidget {
  const Movie3({Key? key}) : super(key: key);

  @override
  State<Movie3> createState() => _Movie3State();
}

class _Movie3State extends State<Movie3> {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    Size size = mediaQuery.size;

    MovieEstructura movie3 = MovieEstructura(
      3,
      size,
      context,
      'images/Pelicula3.jpg',
      'sonic 2: la pelicula',
      'Benedict Cumberbatch, Elizabeth Olsen, Chiwetel Ejiofor, Benedict Wong, Xochitl Gomez, Michael Stuhlbarg, Rachel McAdams, Patrick Stewart.',
    );

    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(25, 34, 41, 1),
        //CONTENIDO
        body: ListView(
          children: [
            movie3.mostrarMovie(3),
          ],
        ),
      ),
    );
  }
}
