import 'package:app_filmes/models/genre.model.dart';

abstract class GenresRepository {
  Future<List<GenreModel>> getGenres();
}
