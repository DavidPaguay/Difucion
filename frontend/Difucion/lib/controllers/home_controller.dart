import 'package:get/get.dart';
import 'package:login_difucion/pages/users_page.dart';

class HomeController extends GetxController {
  
  goToUsers() {
    Get.to(UsersPage());
  }
}
