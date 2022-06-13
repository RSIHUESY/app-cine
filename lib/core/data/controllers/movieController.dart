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
        'language': language,
        'page': '1',
      },
    );

    return getJson(uri).then(
      ((data) => data['results'].map<Movie>((item) => Movie(item)).toList()),
    );
  }
}
