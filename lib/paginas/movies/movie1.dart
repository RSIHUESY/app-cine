import 'package:flutter/material.dart';

import 'movieEstructura.dart';

class Movie1 extends StatefulWidget {
  const Movie1({Key? key}) : super(key: key);

  @override
  State<Movie1> createState() => _Movie1State();
}

class _Movie1State extends State<Movie1> {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    Size size = mediaQuery.size;

    MovieEstructura movie1 = MovieEstructura(
      1,
      size,
      'images/Pelicula1.jpg',
      'doctor strange en el multiverso de la locura',
      'Benedict Cumberbatch, Elizabeth Olsen, Chiwetel Ejiofor, Benedict Wong, Xochitl Gomez, Michael Stuhlbarg, Rachel McAdams, Patrick Stewart.',
    );

    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(25, 34, 41, 1),
        //CONTENIDO
        body: ListView(
          children: [
            movie1.mostrarMovie(),
          ],
        ),
      ),
    );
  }
}
