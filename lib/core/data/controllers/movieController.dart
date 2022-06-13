// ignore_for_file: avoid_print, file_names
import 'dart:convert';

import 'package:app_cine/core/constants/keys.dart';
import 'package:http/http.dart' as http;
import '../models/movies.dart';

class MovieController {
  final String language = 'es-ES';
  final String endPoint = '3/movie/popular';

  Future<dynamic> getJson(Uri uri) async {
    http.Response response = await http.get(uri);
    return json.decode(response.body);
  }

  Future<List<Movie>> fetchMovies() {
    var uri = Uri.https(
      apiUrl,
      endPoint,
      {
        'api_key': apiKey,
        'page': '1',
        'language': language,
      },
    );

    return getJson(uri).then(
      ((data) => data['results'].map<Movie>((item) => Movie(item)).toList()),
    );
  }

  // getMovies() async {
  //   // TMDB tmdb = TMDB(
  //   //   ApiKeys(apiKey, apiToken),
  //   //   logConfig: const ConfigLogger(showLogs: true, showErrorLogs: true),
  //   // );
  //   // Map trendingMovies = await tmdb.v3.trending.getTrending();
  //   // var movies = trendingMovies['page'];
  //   final response = await http.get(Uri.parse(apiUrl));

  //   // List movies = [];

  //   // for (var data in trendingMoviesGet) {
  //   //   movies.add(
  //   //     Movie(
  //   //       name: data['title'],
  //   //       image: data['poster_path'],
  //   //       description: data['overview'],
  //   //       type: data[''],
  //   //       hours: data[''],
  //   //       director: data[''],
  //   //       actors: data[''],
  //   //       dates: dates,
  //   //       seats: seats,
  //   //     ),
  //   // }

  //   if (response.statusCode == 200) {
  //     String body = utf8.decode(response.bodyBytes);
  //     final jsonData = jsonDecode(body);

  //     for (var data in jsonData["data"]) {
  //       movies.add(
  //         Movie(
  //           name: data["name"],
  //           image: data[""],
  //           description: data[""],
  //           type: data[""],
  //           hours: data[""],
  //           director: data[""],
  //           actors: data[""],
  //           dates: dates,
  //           seats: seats,
  //         ),
  //       );
  //     }

  //     return movies;
  //   } else {
  //     throw Exception("Falló la conexion");
  // }
  // }
}
