import 'package:app_filmes/modules/movies/movies_controller.dart';
import 'package:app_filmes/modules/movies/widgets/movies_filters.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widgets/movies_group.dart';
import 'widgets/movies_header.dart';

class MoviesPage extends GetView<MoviesController> {
  const MoviesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width,
      child: ListView(
        children: [
          MoviesHeader(),
          MoviesFilters(),
          MoviesGroup(
            tilte: 'Mais populares',
            movies: controller.popularMovies,
          ),
          MoviesGroup(
            tilte: 'Top filmes',
            movies: controller.topRatedMovies,
          ),
        ],
      ),
    );
  }
}
