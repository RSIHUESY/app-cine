// ignore_for_file: prefer_const_constructors

import 'package:app_cine/paginas/home.dart';
import 'package:app_cine/paginas/movies/moviesHome.dart';
import 'package:flutter/material.dart';
import 'package:app_cine/paginas/signIn.dart';
import 'package:app_cine/paginas/signUp.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CINELAND',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        'SignIn': (BuildContext context) => SignIn(),
        'SignUp': (BuildContext context) => SignUp(),
        'Home': (BuildContext context) => Home(),
        MoviesHome.routeName: (context) => MoviesHome(),
      },
      initialRoute: 'SignIn',
    );
  }
}
