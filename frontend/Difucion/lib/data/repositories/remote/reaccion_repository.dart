import 'package:login_difucion/data/model/reaccion.dart';
import 'package:login_difucion/data/repositories/remote/abstract_repository.dart';
import 'package:login_difucion/data/services/remote/reaccion_service.dart';

class ReaccionRepository extends AbstractRepository<ReaccionService, Reaccion> {
  Future<List<Reaccion>?> getAllByPersona(int personaId) async {
    return serviceGraphql.getAllByPersona(personaId);
  }
}
