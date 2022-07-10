// ignore_for_file: file_names, avoid_print, unused_local_variable, non_constant_identifier_names
import 'package:app_cine/main.dart';
import 'package:app_cine/usuario/utils.dart';
import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  static const routeName = '/sign-up';
  final VoidCallback onClickedSignUp;

  const SignUp({
    Key? key,
    required this.onClickedSignUp,
  }) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    String names = "";
    String lastnames = "";
    String email = "";
    String username = "";
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
            key: formKey,
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
                onChanged: ((value) {
                  setState(() {
                    names = value;
                  });
                }),
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
                  hintText: "Ejemplo: Rodrigo",
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
                onChanged: (value) {
                  lastnames = value;
                },
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
                  hintText: "Ejemplo: Sanchez",
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
              TextFormField(
                controller: emailController,
                onChanged: (value) {
                  email = value;
                },
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
                  hintText: "ejemplo@gmail.com",
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
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (email) =>
                    email != null && !EmailValidator.validate(email)
                        ? 'Ingresa un correo valido'
                        : null,
              ),

              const Divider(height: 20.0),
              //INGRESAR USUARIO
              TextField(
                onChanged: (value) {
                  username = value;
                },
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
                  hintText: "ejemplo123",
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
              TextFormField(
                controller: passwordController,
                onChanged: (value) {
                  password = value;
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
                  labelText: "Contraseña",
                  labelStyle: const TextStyle(
                    color: Color.fromRGBO(200, 205, 208, 1),
                  ),
                  //Texto guia al hacer clic en el input
                  hintText: "6 caracteres mínimo",
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
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) => value != null && value.length < 6
                    ? 'Ingresa minimo 6 caracteres'
                    : null,
              ),

              const Divider(height: 10.0),
              //CONFIRMAR CONTRASEÑA
              TextFormField(
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
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) =>
                    password != value ? 'Las contraseñas no coinciden' : null,
              ),

              const Divider(height: 10.0),
              //BOTON REGISTRARME
              SizedBox(
                child: TextButton(
                  onPressed: () {
                    SignUp();
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
              //BOTON INICIAR SESION
              RichText(
                text: TextSpan(
                  style: const TextStyle(
                    color: Color.fromRGBO(200, 205, 208, 1),
                    fontSize: 14,
                  ),
                  text: "¿Ya tienes cuentas?  ",
                  children: [
                    TextSpan(
                      recognizer: TapGestureRecognizer()
                        ..onTap = widget.onClickedSignUp,
                      text: "Iniciar sesión",
                      style: const TextStyle(
                        decoration: TextDecoration.underline,
                        color: Color.fromARGB(255, 19, 188, 33),
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

  Future SignUp() async {
    // final isValid = formKey.currentState!.validate();
    // if (isValid) return;

    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => const Center(child: CircularProgressIndicator()),
    );

    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );
    } on FirebaseAuthException catch (e) {
      print("\n\nerror: $e");

      Utils.showSnackBar(e.message);
    }

    navigatorKey.currentState!.popUntil((route) => route.isFirst);
  }
}
