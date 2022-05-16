// ignore: file_names
// ignore_for_file: prefer_const_constructors, avoid_print, file_names, duplicate_ignore

import 'package:app_cine/paginas/bodyHome.dart';
import 'package:app_cine/paginas/movies/movie1.dart';
import 'package:app_cine/paginas/movies/movie2.dart';
import 'package:app_cine/paginas/movies/movie3.dart';
import 'package:flutter/material.dart';

class MoviesHome extends StatefulWidget {
  const MoviesHome({Key? key}) : super(key: key);
  static const routeName = '/moviesHomeDatos';
  @override
  State<MoviesHome> createState() => _MoviesHomeState();
}

class _MoviesHomeState extends State<MoviesHome> {
  @override
  Widget build(BuildContext context) {
    final dato = ModalRoute.of(context)!.settings.arguments as Datos;
    final int _actualMovie = dato.index;
    final List<String> _tittles = [
      "doctor strange en el multiverso de la locura".toUpperCase(),
      "doctor strange en el multiverso de la locura".toUpperCase(),
      "doctor strange en el multiverso de la locura".toUpperCase(),
      "doctor strange en el multiverso de la locura".toUpperCase(),
      "doctor strange en el multiverso de la locura".toUpperCase(),
    ];

    _movie(int pos) {
      switch (pos) {
        case 0:
          return Movie1();
        case 1:
          return Movie2();
        case 2:
          return Movie3();
      }
    }

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
            _tittles[_actualMovie],
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(239, 243, 245, 1),
            ),
          ),
        ),

        //CONTENIDO
        body: _movie(_actualMovie),
      ),
    );
  }
}
