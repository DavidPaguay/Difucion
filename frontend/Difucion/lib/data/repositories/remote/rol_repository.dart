import 'package:login_difucion/data/model/rol.dart';
import 'package:login_difucion/data/repositories/remote/abstract_repository.dart';
import 'package:login_difucion/data/services/remote/rol_service.dart';

class RolRepository extends AbstractRepository<RolService, Rol> {
  Future<List<Rol>?> getAllByPersona(int personaId) async {
    return serviceGraphql.getAllByPersona(personaId);
  }
}
