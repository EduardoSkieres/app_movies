import 'package:app_filmes/models/genre.model.dart';

abstract class GenresService {
  Future<List<GenreModel>> getGenres();
}
