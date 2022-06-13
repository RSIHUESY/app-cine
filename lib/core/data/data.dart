// import 'package:app_cine/core/data/controllers/movieController.dart';
import 'package:flutter/material.dart';
import '../constants/constants.dart';
import 'models/movies.dart';

//POSICION DE ASIENTOS OCUPADOS
final section1 = List.generate(
  16,
  (index) => Seat(
    isHidden: [0, 1, 4].contains(index),
    isOcuppied: [].contains(index),
  ),
);

final section2 = List.generate(
  16,
  (index) => Seat(
    isHidden: [4, 5, 6, 7].contains(index),
    isOcuppied: [12, 13].contains(index),
  ),
);

final section3 = List.generate(
  16,
  (index) => Seat(
    isHidden: [2, 3, 7].contains(index),
    isOcuppied: [13, 14, 15].contains(index),
  ),
);

final section4 = List.generate(
  20,
  (index) => Seat(
    isHidden: [].contains(index),
    isOcuppied: [1, 2, 3].contains(index),
  ),
);

final section5 = List.generate(
  20,
  (index) => Seat(
    isHidden: [].contains(index),
    isOcuppied: [].contains(index),
  ),
);

final section6 = List.generate(
  20,
  (index) => Seat(
    isHidden: [].contains(index),
    isOcuppied: [14].contains(index),
  ),
);

//ESTILO DE LOS TIPOS DE ASIENTOS
const seatTypes = [
  //DISPONIBLE
  SeatType(name: 'Disponible', color: Colors.grey),

  //OCUPASO
  SeatType(name: 'Ocupado', color: Colors.black),

  //SELECCIONADO
  SeatType(name: 'Seleccionado', color: AppColors.primaryColor),
];
