import 'package:get/get.dart';
import 'package:login_difucion/controllers/home_controller.dart';
import 'package:login_difucion/controllers/initial_controller.dart';
import 'package:login_difucion/controllers/login_controller.dart';
import 'package:login_difucion/controllers/recover_pass_controller.dart';
import 'package:login_difucion/controllers/register_usuario_controller.dart';
import 'package:login_difucion/controllers/users_controller.dart';

class Injection {
  static void init() {
    Get.lazyPut(() => LoginController());
    Get.lazyPut(() => InitialController());
    Get.lazyPut(() => RegisterUsuarioController());
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => RecoverPasswordController());
    Get.lazyPut(() => UsersController());
  }
}
