// ignore_for_file: avoid_print, file_names

import 'dart:convert';
import 'package:app_cine/home.dart';
import 'package:app_cine/usuario/signIn.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_easyloading/flutter_easyloading.dart';

class LoginController {
  static final _client = http.Client();
  static final _loginUrl =
      Uri.parse('https://flaskflutterlogin.herokuapp.com/login');
  static final _registerUrl =
      Uri.parse('https://flaskflutterlogin.herokuapp.com/register');

  static login(username, password, context) async {
    http.Response response = await _client.post(_loginUrl, body: {
      "username": username,
      "password": password,
    });

    if (response.statusCode == 200) {
      print(jsonDecode(response.body));
      var json = jsonDecode(response.body);

      if (json[0] == 'success') {
        await EasyLoading.showSuccess(json[0]);
        await Navigator.push(
            context, MaterialPageRoute(builder: (context) => const Home()));
      } else {
        EasyLoading.showError(json[0]);
      }
    } else {
      await EasyLoading.showError(
          "Error Code : ${response.statusCode.toString()}");
    }
  }

  static register(names, lastnames, username, mail, password, context) async {
    http.Response response = await _client.post(_registerUrl, body: {
      "names": names,
      "lastnames": lastnames,
      "username": username,
      "mail": mail,
      "password": password,
    });

    if (response.statusCode == 200) {
      var json = jsonDecode(response.body);
      if (json[0] == 'username already exist') {
        await EasyLoading.showError(json[0]);
      } else {
        await EasyLoading.showSuccess(json[0]);
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => const SignIn()));
      }
    } else {
      await EasyLoading.showError(
          "Error Code : ${response.statusCode.toString()}");
    }
  }
}
