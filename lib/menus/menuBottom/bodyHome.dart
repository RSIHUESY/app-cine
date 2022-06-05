// ignore_for_file: file_names

import 'package:app_cine/paginas/moviesComprar/movies/movies_page.dart';

// import '../../paginas/moviesCartelera/movie1.dart';
// import '../../paginas/moviesCartelera/movie2.dart';
// import '../../paginas/moviesCartelera/movie3.dart';
import 'package:flutter/material.dart';

class BodyHome extends StatefulWidget {
  static const routeName = 'BodyHome';
  const BodyHome({Key? key}) : super(key: key);

  @override
  State<BodyHome> createState() => _BodyHomeState();
}

class _BodyHomeState extends State<BodyHome> {
  @override
  Widget build(BuildContext context) {
    return const MoviesPage();
    // return PageView(
    //   clipBehavior: Clip.antiAlias,
    //   physics: const BouncingScrollPhysics(),
    //   scrollDirection: Axis.horizontal,
    //   children: const <Widget>[
    //     Movie1(),
    //     Movie2(),
    //     Movie3(),
    //   ],
    // );
  }
}
