
import 'package:get/get.dart';
import 'package:login_difucion/modules/login/login_page.dart';

class RegisterUsuarioController extends GetxController {
   void goToLoginPage() {
    Get.to(() => LoginPage(), transition: Transition.zoom);
  }
}