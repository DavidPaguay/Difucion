import 'package:login_difucion/data/model/plantilla.dart';
import 'package:login_difucion/data/repositories/remote/abstract_repository.dart';
import 'package:login_difucion/data/services/remote/plantilla_service.dart';

class PlantillaRepository
    extends AbstractRepository<PlantillaService, Plantilla> {
  Future<List<Plantilla>?> getAllByPersona(int personaId) async {
    return serviceGraphql.getAllByPersona(personaId);
  }
}
