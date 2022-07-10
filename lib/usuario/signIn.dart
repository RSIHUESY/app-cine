// ignore_for_file: file_names, unused_local_variable, avoid_print
import 'package:app_cine/main.dart';
import 'package:app_cine/usuario/forgotPasswrodPage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  static const routeName = '/sign-in';
  final VoidCallback onClickedSignUp;

  const SignIn({
    Key? key,
    required this.onClickedSignUp,
  }) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    String email = "";
    String password = "";

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
              //INICIAR SESION
              Column(
                children: [
                  //Titulo
                  Text(
                    "iniciar sesión".toUpperCase(),
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

              const Divider(height: 20.0),
              //INGRESAR EMAIL
              TextField(
                controller: emailController,
                onChanged: (value) {
                  setState(() {
                    email = value;
                  });
                },
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
                decoration: InputDecoration(
                  //Fondo con texto guia
                  filled: true,
                  fillColor: const Color.fromRGBO(33, 46, 54, 1),
                  labelText: "correo".toUpperCase(),
                  labelStyle: const TextStyle(
                    color: Color.fromRGBO(200, 205, 208, 1),
                  ),
                  //Texto guia al hacer clic en el input
                  hintText: "Ingresa tu correo",
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
              ),

              const Divider(height: 10.0),
              //INGRESAR CONTRASEÑA
              TextField(
                controller: passwordController,
                onChanged: (value) {
                  setState(() {
                    password = value;
                  });
                },
                obscureText: true,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
                decoration: InputDecoration(
                  //Fondo con texto guia
                  filled: true,
                  fillColor: const Color.fromRGBO(33, 46, 54, 1),
                  labelText: "contraseña".toUpperCase(),
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
                    Icons.lock_outlined, //Icono de candado
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
              ),

              const Divider(height: 10.0),
              //BOTON INGRESAR
              SizedBox(
                child: TextButton(
                  onPressed: () {
                    signIn();
                  },
                  child: Text("ingresar".toUpperCase()),
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
              GestureDetector(
                child: const Text(
                  "¿Olvidaste tu contraseña?",
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: Color.fromARGB(255, 0, 0, 255),
                  ),
                ),
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ForgotPasswordPage(),
                  ),
                ),
              ),

              const Divider(height: 10.0),
              //BOTON REGISTRARSE
              RichText(
                text: TextSpan(
                  style: const TextStyle(
                    color: Color.fromRGBO(200, 205, 208, 1),
                    fontSize: 14,
                  ),
                  text: "¿No tienes cuentas?  ",
                  children: [
                    TextSpan(
                      recognizer: TapGestureRecognizer()
                        ..onTap = widget.onClickedSignUp,
                      text: "Registrarme",
                      style: const TextStyle(
                        decoration: TextDecoration.underline,
                        color: Color.fromARGB(255, 0, 0, 255),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Future signIn() async {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => const Center(child: CircularProgressIndicator()),
    );

    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );
    } on FirebaseAuthException catch (e) {
      print(e);
    }

    navigatorKey.currentState!.popUntil((route) => route.isFirst);
  }
}
