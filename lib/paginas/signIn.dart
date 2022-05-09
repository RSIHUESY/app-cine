// ignore: file_names
// ignore_for_file: prefer_const_constructors, avoid_print, file_names, duplicate_ignore

import 'package:app_cine/paginas/home.dart';
import 'package:app_cine/paginas/signUp.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  late String signInUser;
  late String signInPass;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(25, 34, 41, 1),
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 25.0,
          vertical: 50.0,
        ),
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 75.0,
                backgroundColor: Colors.transparent,
                backgroundImage: AssetImage('images/logo.png'),
              ),
              Text(
                "CINELAND",
                style: TextStyle(
                  fontFamily: 'FugazOne',
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(225, 244, 67, 54),
                ),
              ),
              Divider(height: 20.0),
              Text(
                "Iniciar Sesión",
                style: TextStyle(
                  fontSize: 25,
                  color: Color.fromRGBO(239, 243, 245, 1),
                ),
              ),
              SizedBox(
                width: 200.0,
                height: 10.0,
                child: Divider(
                  color: Color.fromRGBO(42, 59, 71, 1.0),
                  thickness: 3.0, //Grosor
                ),
              ),
              Divider(height: 20.0),
              TextField(
                enableIMEPersonalizedLearning: false,
                textCapitalization: TextCapitalization.characters,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  //contentPadding: EdgeInsets.all(20.0), //Padding
                  //Fondo
                  filled: true,
                  fillColor: Color.fromRGBO(33, 46, 54, 1),
                  labelText: "USUARIO",
                  labelStyle: TextStyle(
                    color: Color.fromRGBO(200, 205, 208, 1),
                  ),
                  hintText: "Ingrese su nombre de usuario",
                  hintStyle: TextStyle(
                    color: Color.fromRGBO(200, 205, 208, 0.75),
                  ),
                  iconColor: Colors.white,
                  suffixIcon: Icon(
                    Icons.verified_user, //Icono de verificado
                    color: Colors.white,
                  ),
                  //Color en inactivo
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    borderSide: BorderSide(
                        color: Color.fromARGB(255, 59, 82, 99), width: 2),
                  ),
                  //Color Activado
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                  ),
                ),
                onSubmitted: (valor) {
                  signInUser = valor;
                  print("EL NOMBRE DE USUARIO ES: $signInUser");
                },
              ),
              Divider(height: 10.0),
              TextField(
                enableIMEPersonalizedLearning: false,
                obscureText: true,
                textCapitalization: TextCapitalization.characters,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromRGBO(33, 46, 54, 1),
                  labelText: "CONTRASEÑA",
                  labelStyle: TextStyle(
                    color: Color.fromRGBO(200, 205, 208, 1),
                  ),
                  hintText: "Contraseña",
                  hintStyle: TextStyle(
                    color: Color.fromRGBO(200, 205, 208, 0.75),
                  ),
                  suffixIcon: Icon(
                    Icons.lock_outlined, //Icono de candado
                    color: Colors.white,
                  ),
                  //Color en inactivo
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    borderSide: BorderSide(
                        color: Color.fromARGB(255, 59, 82, 99), width: 2),
                  ),
                  //Color Activado
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                  ),
                ),
                onSubmitted: (valor) {
                  signInPass = valor;
                  print("LA CONTRASEÑA ES: $signInPass");
                },
              ),
              Divider(height: 20.0),
              SizedBox(
                child: TextButton(
                  onPressed: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Home()),
                    ),
                  },
                  autofocus: false,
                  child: Text("INGRESAR"),
                  style: TextButton.styleFrom(
                    backgroundColor: Color.fromRGBO(164, 23, 32, 1),
                    primary: Color.fromARGB(255, 224, 229, 233),
                    textStyle: TextStyle(
                      fontSize: 20.0,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      side: BorderSide(
                        color: Color.fromRGBO(180, 49, 58, 1),
                      ),
                    ),
                  ),
                ),
              ),
              Divider(height: 30.0),
              Text(
                "¿No tienes cuenta?",
                style: TextStyle(
                  fontSize: 15,
                  color: Color.fromRGBO(200, 205, 208, 1),
                ),
              ),
              SizedBox(
                child: TextButton(
                  onPressed: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignUp()),
                    ),
                  },
                  autofocus: false,
                  child: Text("Registrarme"),
                  style: TextButton.styleFrom(
                    primary: Color.fromRGBO(0, 0, 170, 1),
                    textStyle: TextStyle(
                      fontSize: 17.0,
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
