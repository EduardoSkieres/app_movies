import 'package:get/get.dart';

class LoginController extends GetxController {
  RxString nome = RxString('Eduardo');

  void login() {
    nome.value = 'DADADA';
  }
}
