import 'package:app_cine/core/constants/app_text_styles.dart';
import 'package:app_cine/core/data/models/movies.dart';
import 'package:flutter/material.dart';
import 'animations/animations.dart';
import 'widgets/widgets.dart';

class MoviePage extends StatelessWidget {
  const MoviePage({
    Key? key,
    required this.movie,
  }) : super(key: key);

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    Size size = mediaQuery.size;

    return LayoutBuilder(
      builder: (context, constraints) {
        final w = constraints.maxWidth;
        final h = constraints.maxHeight;

        return Scaffold(
          body: Container(
            decoration: const BoxDecoration(
              color: Color.fromRGBO(25, 34, 41, 1),
            ),
            height: size.height * 5,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                //PORTADA
                Positioned(
                  top: -h * .1,
                  height: h * .6,
                  width: w,
                  child: Hero(
                    tag: movie.getImageUrl(),
                    child: MovieCard(image: movie.getImageUrl()),
                  ),
                ),

                //INFORMACION DE LA PELICULA
                Positioned(
                  width: w,
                  height: h * .5,
                  child: Column(
                    children: [
                      const Spacer(),
                      //TITULO
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Hero(
                          tag: movie.name,
                          child: Material(
                            type: MaterialType.transparency,
                            child: Text(
                              movie.name.toUpperCase(),
                              style: AppTextStyles.movieNameTextStyle,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),

                      const Divider(height: 10),
                      //DESCRIPTION
                      OpacityTween(
                        child: SlideUpTween(
                          begin: const Offset(0, 200),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: w * .1),
                            child: Text(
                              movie.description,
                              style: AppTextStyles.movieDescriptionStyle,
                              textAlign: TextAlign.start,
                              maxLines: 8,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                      ),
                      const Spacer(flex: 3)
                    ],
                  ),
                ),

                //BUTTON
                Positioned(
                  bottom: h * .03,
                  height: h * .06,
                  width: w * .7,
                  child: OpacityTween(
                    child: SlideUpTween(
                      begin: const Offset(-30, 60),
                      child: BookButton(movie: movie),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
