import 'package:flutter/material.dart';

import 'package:app_filmes/app/ui/widgets/movie_card.dart';
import 'package:app_filmes/models/movie_model.dart';
import 'package:get/get.dart';

class MoviesGroup extends StatelessWidget {
  final String tilte;
  final List<MovieModel> movies;
  const MoviesGroup({
    Key? key,
    required this.tilte,
    required this.movies,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          Text(
            tilte,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
              height: 280,
              child: Obx(() {
                return ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: movies.length,
                  itemBuilder: (context, index) {
                    return MovieCard(
                      movie: movies[index],
                    );
                  },
                );
              })),
        ],
      ),
    );
  }
}
