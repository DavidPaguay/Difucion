import 'package:login_difucion/data/model/publicacion.dart';
import 'package:login_difucion/data/repositories/remote/abstract_repository.dart';
import 'package:login_difucion/data/services/remote/publicacion_service.dart';

class PublicacionRepository
    extends AbstractRepository<PublicacionService, Publicacion> {
  Future<List<Publicacion>?> getAllByPersona(int personaId) async {
    return serviceGraphql.getAllByPersona(personaId);
  }
}
