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
    fontSize: 25,
    fontWeight: FontWeight.bold,
  );

  static const movieDetails = TextStyle(
    color: Colors.white70,
    // height: 1.5,
    fontSize: 16,
  );

  static const bookButtonTextStyle = TextStyle(
    color: Colors.white,
    fontSize: 20,
    fontWeight: FontWeight.w500,
    letterSpacing: 1.1,
  );

  static const movieDescriptionStyle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w300,
  );

  static const infoTitleStyle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w400,
  );

  static const infoContentStyle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w700,
  );
}
