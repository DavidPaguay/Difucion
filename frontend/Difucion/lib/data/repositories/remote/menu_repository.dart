import 'package:login_difucion/data/model/menu.dart';
import 'package:login_difucion/data/repositories/remote/abstract_repository.dart';
import 'package:login_difucion/data/services/remote/menu_service.dart';

class MenuRepository extends AbstractRepository<MenuService, Menu> {
  Future<List<Menu>?> getAllByPersona(int personaId) async {
    return serviceGraphql.getAllByPersona(personaId);
  }
}
