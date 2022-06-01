import 'package:get/get.dart';
import 'package:login_difucion/modules/home/home_controller.dart';
import 'package:login_difucion/modules/initial/initial_controller.dart';
import 'package:login_difucion/modules/login/login_controller.dart';
import 'package:login_difucion/modules/recover_pass/recover_pass_controller.dart';
import 'package:login_difucion/modules/register_user/register_usuario_controller.dart';
import 'package:login_difucion/modules/users/users_controller.dart';

import 'modules/publications/publications_controller.dart';

class Injection {
  static void init() {
    Get.lazyPut(() => LoginController());
    Get.lazyPut(() => InitialController());
    Get.lazyPut(() => RegisterUsuarioController());
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => RecoverPasswordController());
    Get.lazyPut(() => UsersController());
    Get.lazyPut(() => PublicationsController());
  }
}
