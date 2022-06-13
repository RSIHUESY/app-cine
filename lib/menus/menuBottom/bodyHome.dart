// ignore_for_file: file_names
import 'package:app_cine/paginas/bodyHome/moviesCartelera/movies/movies_page.dart';
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
  }
}
