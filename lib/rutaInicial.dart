// ignore_for_file: file_names

import 'package:app_cine/paginas/home.dart';
import 'package:app_cine/paginas/movies/moviesHome.dart';
import 'package:flutter/material.dart';

class RutaInicial {
  static Route<dynamic> ruta(RouteSettings settings) {
    if (settings.name == '/') {
      return MaterialPageRoute(
        builder: (context) => const Home(),
      );
    } else if (settings.name == MoviesHome.routeName) {
      return MaterialPageRoute(
        builder: (context) => const Home(),
      );
    } else {
      return MaterialPageRoute(
        builder: (context) => const Home(),
      );
    }
  }
}
