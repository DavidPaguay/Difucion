import 'package:login_difucion/data/model/acceso.dart';
import 'package:login_difucion/data/repositories/remote/abstract_repository.dart';
import 'package:login_difucion/data/services/remote/acceso_service.dart';

class AccesoRepository extends AbstractRepository<AccesoService, Acceso> {
  Future<List<Acceso>?> getAllByPersona(int personaId) async {
    return serviceGraphql.getAllByPersona(personaId);
  }
}
