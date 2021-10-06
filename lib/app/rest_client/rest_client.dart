import 'package:get/get.dart';

class RestClient extends GetConnect {
  RestClient() {
    // Somete utilizar se o APP utiliza apenas 1 backend
    httpClient.baseUrl = 'https://api.themoviedb.org/3';
  }
}
