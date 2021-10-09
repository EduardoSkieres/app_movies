import 'package:app_filmes/app/ui/theme_extensions.dart';
import 'package:flutter/material.dart';

import 'package:app_filmes/models/cast_model.dart';

class MovieCast extends StatelessWidget {
  final CastModel? cast;

  const MovieCast({
    Key? key,
    this.cast,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 95,
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              cast?.image ?? '',
              width: 85,
              height: 85,
              fit: BoxFit.cover,
            ),
          ),
          Text(
            cast?.name ?? '',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            cast?.character ?? '',
            style: TextStyle(
              fontSize: 12,
              color: context.themeGray,
            ),
          )
        ],
      ),
    );
  }
}
