import 'package:app_cine/home.dart';
import 'package:flutter/material.dart';
import 'package:app_cine/usuario/signIn.dart';
import 'package:app_cine/usuario/signUp.dart';

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
        SignIn.routeName: (context) => const SignIn(),
        SignUp.routeName: (context) => const SignUp(),
        Home.routeName: (context) => const Home(),
      },
      initialRoute: SignIn.routeName,
    );
  }
}
