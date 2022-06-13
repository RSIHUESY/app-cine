// ignore_for_file: use_rethrow_when_possible

import 'package:flutter/material.dart';
import '../../constants/imageSize.dart';
import '../data.dart';

class Movie {
  late String name;
  late String image;
  // String screenPreview;
  late String description;
  late String type;
  late int hours;
  late String director;
  // late int stars;
  late List<String> actors;
  late List<MovieDate> date;
  late List<List<Seat>> seat;

  String getImageUrl() => getImageOriginalUrl(image);

  factory Movie(Map jsonMap) {
    try {
      return Movie.deserialize(jsonMap);
    } catch (e) {
      throw e;
    }
  }

  Movie.deserialize(Map json)
      : // id = json['id'].toInt(),
        name = json['title'],
        image = json['backdrop_path'],
        description = json['overview'],
        type = "",
        hours = 0,
        director = "",
        // stars = json['vote_count'].toInt(),
        actors = [],
        date = dates,
        seat = seats;

  // const Movie({
  //   required this.name,
  //   required this.image,
  //   // required this.screenPreview,
  //   required this.description,
  //   required this.type,
  //   required this.hours,
  //   required this.director,
  //   // required this.stars,
  //   required this.actors,
  //   required this.dates,
  //   required this.seats,
  // });
}

class MovieDate {
  final int day;
  final String month;
  final String hour;

  const MovieDate({
    required this.day,
    required this.month,
    required this.hour,
  });
}

class Seat {
  final bool isHidden;
  final bool isOcuppied;
  bool isSelected;

  Seat({
    required this.isHidden,
    required this.isOcuppied,
    this.isSelected = false,
  });
}

class SeatType {
  final String name;
  final Color color;

  const SeatType({
    required this.name,
    required this.color,
  });
}

final seats = [
  section1,
  section2,
  section3,
  section4,
  section5,
  section6,
];

const dates = [
  MovieDate(day: 11, month: 'OCT', hour: '6:00PM'),
  MovieDate(day: 11, month: 'OCT', hour: '8:00PM'),
  MovieDate(day: 11, month: 'OCT', hour: '9:00PM'),
  MovieDate(day: 11, month: 'OCT', hour: '10:00PM'),
];
