// ignore: file_names
// ignore_for_file: prefer_const_constructors, avoid_print, file_names, duplicate_ignore

import 'package:app_cine/paginas/movies/movie1.dart';
import 'package:app_cine/paginas/movies/movie2.dart';
import 'package:app_cine/paginas/movies/movie3.dart';
import 'package:flutter/material.dart';

class BodyHome extends StatefulWidget {
  static const routeName = 'BodyHome';
  const BodyHome({Key? key}) : super(key: key);

  @override
  State<BodyHome> createState() => _BodyHomeState();
}

class _BodyHomeState extends State<BodyHome> {
  // _selectMovie(int pos) {
  //   Navigator.push(
  //       context,
  //       MaterialPageRoute(
  //         builder: (context) => MoviesHome(),
  //         settings: RouteSettings(arguments: Datos(pos)),
  //       ));
  // }

  @override
  Widget build(BuildContext context) {
    return PageView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      children: const <Widget>[
        Movie1(),
        Movie2(),
        Movie3(),
      ],
    );
  }
}

class Datos {
  final int index;

  Datos(this.index);
}
