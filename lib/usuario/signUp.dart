// ignore_for_file: file_names

import 'signIn.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  static const routeName = '/sign-up';
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    TextEditingController _nameSignUp = TextEditingController();
    TextEditingController _emailSignUp = TextEditingController();
    TextEditingController _userSignUp = TextEditingController();
    TextEditingController _passSignUp = TextEditingController();
    TextEditingController _passConfirmSignUp = TextEditingController();

    return Scaffold(
      backgroundColor: const Color.fromRGBO(25, 34, 41, 1),
      body: ListView(
        //Evita la visualizacion de bordes rojos cuando no hay mas contenido
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(
          horizontal: 30.0,
          vertical: 50.0,
        ),

        //CONTENIDO
        children: <Widget>[
          Column(
            children: [
              //LOGO
              Column(
                children: const [
                  //Imagen
                  CircleAvatar(
                    radius: 75.0,
                    backgroundColor: Colors.transparent,
                    backgroundImage: AssetImage('images/logo.png'),
                  ),
                  //Nombre de la app
                  Text(
                    "CINELAND",
                    style: TextStyle(
                      fontFamily: 'FugazOne',
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(225, 244, 67, 54),
                    ),
                  ),
                ],
              ),

              const Divider(height: 30.0),
              //REGISTRARME
              Column(
                children: [
                  //Titulo
                  Text(
                    "registrarme".toUpperCase(),
                    style: const TextStyle(
                      fontSize: 20,
                      color: Color.fromRGBO(239, 243, 245, 1),
                    ),
                  ),
                  //Subrayado
                  const SizedBox(
                    width: 175.0,
                    height: 10.0,
                    child: Divider(
                      color: Color.fromRGBO(42, 59, 71, 1.0),
                      thickness: 3.0, //Grosor
                    ),
                  ),
                ],
              ),

              const Divider(height: 10.0),
              //INGRESAR NOMBRES
              TextField(
                controller: _nameSignUp,
                textCapitalization: TextCapitalization.words,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
                decoration: InputDecoration(
                  //Fondo con texto guia
                  filled: true,
                  fillColor: const Color.fromRGBO(33, 46, 54, 1),
                  labelText: "Nombre(s)",
                  labelStyle: const TextStyle(
                    color: Color.fromRGBO(200, 205, 208, 1),
                  ),
                  //Texto guia al hacer clic en el input
                  hintText: "Ingresa tu(s) nombre(s)",
                  hintStyle: const TextStyle(
                    color: Color.fromRGBO(200, 205, 208, 0.75),
                  ),
                  //Icono
                  iconColor: Colors.white,
                  suffixIcon: const Icon(
                    Icons.verified_user_rounded, //Icono de verificado
                    color: Colors.white,
                  ),
                  //Color en inactivo
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    borderSide: const BorderSide(
                        color: Color.fromARGB(255, 59, 82, 99), width: 1),
                  ),
                  //Color Activado
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    borderSide: const BorderSide(
                      color: Colors.white,
                    ),
                  ),
                ),
                onSubmitted: (valor) {},
              ),

              const Divider(height: 10.0),
              //INGRESAR APELLIDOS
              TextField(
                controller: _nameSignUp,
                textCapitalization: TextCapitalization.words,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
                decoration: InputDecoration(
                  //Fondo con texto guia
                  filled: true,
                  fillColor: const Color.fromRGBO(33, 46, 54, 1),
                  labelText: "Apellido(s)",
                  labelStyle: const TextStyle(
                    color: Color.fromRGBO(200, 205, 208, 1),
                  ),
                  //Texto guia al hacer clic en el input
                  hintText: "Ingresa tu(s) apellido(s)",
                  hintStyle: const TextStyle(
                    color: Color.fromRGBO(200, 205, 208, 0.75),
                  ),
                  //Icono
                  iconColor: Colors.white,
                  suffixIcon: const Icon(
                    Icons.verified_user_rounded, //Icono de verificado
                    color: Colors.white,
                  ),
                  //Color en inactivo
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    borderSide: const BorderSide(
                        color: Color.fromARGB(255, 59, 82, 99), width: 1),
                  ),
                  //Color Activado
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    borderSide: const BorderSide(
                      color: Colors.white,
                    ),
                  ),
                ),
                onSubmitted: (valor) {},
              ),

              const Divider(height: 10.0),
              //INGRESAR CORREO
              TextField(
                controller: _emailSignUp,
                textCapitalization: TextCapitalization.words,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
                decoration: InputDecoration(
                  //Fondo con texto guia
                  filled: true,
                  fillColor: const Color.fromRGBO(33, 46, 54, 1),
                  labelText: "Correo electronico",
                  labelStyle: const TextStyle(
                    color: Color.fromRGBO(200, 205, 208, 1),
                  ),
                  //Texto guia al hacer clic en el input
                  hintText: "Ingresa un correo electrónico",
                  hintStyle: const TextStyle(
                    color: Color.fromRGBO(200, 205, 208, 0.75),
                  ),
                  //Icono
                  iconColor: Colors.white,
                  suffixIcon: const Icon(
                    Icons.alternate_email, //Icono de verificado
                    color: Colors.white,
                  ),
                  //Color en inactivo
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    borderSide: const BorderSide(
                        color: Color.fromARGB(255, 59, 82, 99), width: 1),
                  ),
                  //Color Activado
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    borderSide: const BorderSide(
                      color: Colors.white,
                    ),
                  ),
                ),
                onSubmitted: (valor) {},
              ),

              const Divider(height: 20.0),
              //INGRESAR USUARIO
              TextField(
                controller: _userSignUp,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
                decoration: InputDecoration(
                  //Fondo con texto guia
                  filled: true,
                  fillColor: const Color.fromRGBO(33, 46, 54, 1),
                  labelText: "Usuario",
                  labelStyle: const TextStyle(
                    color: Color.fromRGBO(200, 205, 208, 1),
                  ),
                  //Texto guia al hacer clic en el input
                  hintText: "Crea un nombre de usuario",
                  hintStyle: const TextStyle(
                    color: Color.fromRGBO(200, 205, 208, 0.75),
                  ),
                  //Icono
                  iconColor: Colors.white,
                  suffixIcon: const Icon(
                    Icons.person, //Icono de verificado
                    color: Colors.white,
                  ),
                  //Color en inactivo
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    borderSide: const BorderSide(
                        color: Color.fromARGB(255, 59, 82, 99), width: 1),
                  ),
                  //Color Activado
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    borderSide: const BorderSide(
                      color: Colors.white,
                    ),
                  ),
                ),
                onSubmitted: (valor) {},
              ),

              const Divider(height: 10.0),
              //INGRESAR CONTRASEÑA
              TextField(
                controller: _passSignUp,
                obscureText: true,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
                decoration: InputDecoration(
                  //Fondo con texto guia
                  filled: true,
                  fillColor: const Color.fromRGBO(33, 46, 54, 1),
                  labelText: "Contraseña",
                  labelStyle: const TextStyle(
                    color: Color.fromRGBO(200, 205, 208, 1),
                  ),
                  //Texto guia al hacer clic en el input
                  hintText: "Ingresa tu contraseña",
                  hintStyle: const TextStyle(
                    color: Color.fromRGBO(200, 205, 208, 0.75),
                  ),
                  //Icono
                  suffixIcon: const Icon(
                    Icons.lock, //Icono de candado
                    color: Colors.white,
                  ),
                  //Color en inactivo
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    borderSide: const BorderSide(
                        color: Color.fromARGB(255, 59, 82, 99), width: 2),
                  ),
                  //Color Activado
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    borderSide: const BorderSide(
                      color: Colors.white,
                    ),
                  ),
                ),
                onSubmitted: (valor) {},
              ),

              const Divider(height: 10.0),
              //CONFIRMAR CONTRASEÑA
              TextField(
                controller: _passConfirmSignUp,
                obscureText: true,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
                decoration: InputDecoration(
                  //Fondo con texto guia
                  filled: true,
                  fillColor: const Color.fromRGBO(33, 46, 54, 1),
                  labelText: "Confirmar contraseña",
                  labelStyle: const TextStyle(
                    color: Color.fromRGBO(200, 205, 208, 1),
                  ),
                  //Texto guia al hacer clic en el input
                  hintText: "Ingresa nuevamente tu contraseña",
                  hintStyle: const TextStyle(
                    color: Color.fromRGBO(200, 205, 208, 0.75),
                  ),
                  //Icono
                  suffixIcon: const Icon(
                    Icons.lock, //Icono de candado
                    color: Colors.white,
                  ),
                  //Color en inactivo
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    borderSide: const BorderSide(
                        color: Color.fromARGB(255, 59, 82, 99), width: 2),
                  ),
                  //Color Activado
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    borderSide: const BorderSide(
                      color: Colors.white,
                    ),
                  ),
                ),
                onSubmitted: (valor) {},
              ),

              const Divider(height: 10.0),
              //BOTON REGISTRARME
              SizedBox(
                child: TextButton(
                  onPressed: () => {
                    if (true)
                      {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignIn(),
                          ),
                        ),
                      }
                  },
                  child: Text("registrarme".toUpperCase()),
                  style: TextButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(164, 23, 32, 1),
                    primary: const Color.fromARGB(255, 216, 221, 225),
                    textStyle: const TextStyle(
                      fontSize: 18.0,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      side: const BorderSide(
                        color: Color.fromRGBO(180, 49, 58, 1),
                      ),
                    ),
                  ),
                ),
              ),

              const Divider(height: 10.0),
            ],
          )
        ],
      ),
    );
  }
}
