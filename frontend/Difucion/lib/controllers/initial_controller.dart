import 'package:get/get.dart';
import 'package:login_difucion/pages/login_page.dart';

class InitialController extends GetxController {

  @override
  void onReady() {
    super.onReady();
    Future.delayed(const Duration(seconds: 2), () {
      Get.to( () => LoginPage(), transition: Transition.zoom);
    });
  }
}
