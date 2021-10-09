import 'package:flutter/material.dart';

import 'package:app_filmes/models/movie_detail_model.dart';

import 'movie_detail_content/movie_detail_content_credits.dart';
import 'movie_detail_content/movie_detail_content_production_companies.dart';
import 'movie_detail_content/movie_detail_content_title.dart';
import 'movie_detail_content/movie_detail_conteten_main_cast.dart';

class MovieDetailContent extends StatelessWidget {
  final MovieDetailModel? movie;

  const MovieDetailContent({
    Key? key,
    required this.movie,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MovieDetailContentTitle(movie: movie),
        MovieDetailContentCredits(movie: movie),
        MovieDetailContentProductionCompanies(movie: movie),
        MovieDetailContetenMainCast(movie: movie)
      ],
    );
  }
}
