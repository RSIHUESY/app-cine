// ignore_for_file: file_names, avoid_print, use_key_in_widget_constructors

import 'package:app_cine/usuario/utils.dart';
import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatefulWidget {
  @override
  _ForgotPasswordPageState createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text("Reestablecer contraseña".toUpperCase()),
        ),
        backgroundColor: const Color.fromRGBO(25, 34, 41, 1),
        body: ListView(
          //Evita la visualizacion de bordes rojos cuando no hay mas contenido
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.symmetric(
            horizontal: 30.0,
            vertical: 50.0,
          ),
          children: [
            Form(
              key: formKey,
              child: Column(
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
                        "Reestablecer contraseña".toUpperCase(),
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
                  //INGRESAR CORREO
                  TextFormField(
                    controller: emailController,
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

                  const Divider(height: 10.0),
                  //BOTON REESTABLECER CONTRASEÑA
                  SizedBox(
                    child: TextButton(
                      onPressed: () {
                        resetPassword();
                      },
                      child: Text("reestablecer contraseña".toUpperCase()),
                      style: TextButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(164, 23, 32, 1),
                        primary: const Color.fromARGB(255, 216, 221, 225),
                        textStyle: const TextStyle(
                          fontSize: 14.0,
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
                ],
              ),
            ),
          ],
        ),
      );

  Future resetPassword() async {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => const Center(child: CircularProgressIndicator()),
    );

    try {
      await FirebaseAuth.instance
          .sendPasswordResetEmail(email: emailController.text.trim());

      Utils.showSnackBar("Email enviado para reestablecer contraseña");
      Navigator.of(context).popUntil((route) => route.isFirst);
    } on FirebaseAuthException catch (e) {
      print("\n\n Error: $e");
      Utils.showSnackBar(e.message);
    }
  }
}
