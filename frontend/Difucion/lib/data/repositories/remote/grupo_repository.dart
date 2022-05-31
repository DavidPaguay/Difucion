import 'package:login_difucion/data/model/grupo.dart';
import 'package:login_difucion/data/repositories/remote/abstract_repository.dart';
import 'package:login_difucion/data/services/remote/grupo_service.dart';

class GrupoRepository extends AbstractRepository<GrupoService, Grupo> {
  Future<List<Grupo>?> getAllByPersona(int personaId) async {
    return serviceGraphql.getAllByPersona(personaId);
  }
}
