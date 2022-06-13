// ignore_for_file: non_constant_identifier_names, unused_element, file_names

String _W300 = "https://image.tmdb.org/t/p/w300";
String _W500 = "https://image.tmdb.org/t/p/w500";
String _original = "https://image.tmdb.org/t/p/original";

String getImageMediumUrl(String path) => _W300 + path;
String getImageLargeUrl(String path) => _W500 + path;
String getImageOriginalUrl(String path) => _original + path;
