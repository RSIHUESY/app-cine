// import 'dart:ffi';
import 'package:app_cine/core/constants/constants.dart';
import 'package:app_cine/core/data/models/movies.dart';
import 'package:app_cine/paginas/bodyHome/moviesComprar/booking/booking_page.dart';
import 'package:flutter/material.dart';

class BookButton extends StatelessWidget {
  const BookButton({
    Key? key,
    required this.movie,
  }) : super(key: key);

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        const transitionDuration = Duration(milliseconds: 200);

        Navigator.of(context).push(
          PageRouteBuilder(
            transitionDuration: transitionDuration,
            reverseTransitionDuration: transitionDuration,
            pageBuilder: (_, animation, ___) {
              return FadeTransition(
                opacity: animation,
                child: BookingPage(movie: movie),
              );
            },
          ),
        );
      },
      child: Container(
        child: const Text("COMPRAR", style: AppTextStyles.bookButtonTextStyle),
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
      ),
    );
  }
}
