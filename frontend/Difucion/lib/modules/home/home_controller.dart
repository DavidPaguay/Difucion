import 'package:get/get.dart';
import 'package:login_difucion/modules/publications/publications_page.dart';
import 'package:login_difucion/modules/users/users_page.dart';

class HomeController extends GetxController {
  
  goToUsers() {
    Get.to(UsersPage());
  }

  goToPublications() {
    Get.to(PublicacionesPage());
  }
}
