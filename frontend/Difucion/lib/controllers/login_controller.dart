import 'package:get/get.dart';
import 'package:login_difucion/pages/home_page.dart';
import 'package:login_difucion/pages/recover_pass_page.dart';
import 'package:login_difucion/pages/register_usuario_page.dart';

class LoginController extends GetxController {

  String _correo = '', _password = '';
  bool _visible = true;

  bool get visible => _visible;

  void verifyPassword() {
    Get.to(() => HomePage(), transition: Transition.zoom);
  }

  void newRegistro() {
    Get.to(() => RegistroUsuarioPage(), transition: Transition.zoom);
  }

  void goToRecoverPass() {
    Get.to(() => RecoverPasswordPage(), transition: Transition.zoom);
  }

  void onCorreoChanged(String value) => _correo = value;
  void onPasswordChanged(String value) => _password = value;

  void changeVisibility() {
    _visible = !_visible;
    update();
  }
}
