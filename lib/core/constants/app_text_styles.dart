import 'package:flutter/material.dart';

class AppTextStyles {
  AppTextStyles._();

  static const labelStyle = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.w700,
    fontSize: 40,
  );

  static const unselectedLabelStyle = TextStyle(
    color: Colors.white70,
    fontWeight: FontWeight.w600,
    fontSize: 24,
  );

  static const movieNameTextStyle = TextStyle(
    color: Colors.white,
    fontSize: 22,
    fontWeight: FontWeight.bold,
  );

  static const movieDetails = TextStyle(
    color: Colors.white70,
    // height: 1.5,
    fontSize: 14,
  );

  static const bookButtonTextStyle = TextStyle(
    color: Colors.white,
    fontSize: 20,
    fontWeight: FontWeight.w500,
    letterSpacing: 1.1,
  );

  static const movieDescriptionStyle = TextStyle(
    color: Colors.white70,
    fontSize: 18,
    fontWeight: FontWeight.w300,
  );

  static const infoTitleStyle = TextStyle(
    color: Color.fromARGB(255, 229, 229, 229),
    fontSize: 20,
    fontWeight: FontWeight.w500,
  );

  static const infoContentStyle = TextStyle(
    color: Color.fromARGB(255, 177, 177, 177),
    fontSize: 20,
    fontWeight: FontWeight.w900,
  );
}
