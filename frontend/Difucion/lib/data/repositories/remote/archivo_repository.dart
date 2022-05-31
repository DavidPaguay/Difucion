import 'package:login_difucion/data/model/archivo.dart';
import 'package:login_difucion/data/repositories/remote/abstract_repository.dart';
import 'package:login_difucion/data/services/remote/archivo_service.dart';

class ArchivoRepository extends AbstractRepository<ArchivoService, Archivo> {
  Future<List<Archivo>?> getAllByPersona(int personaId) async {
    return serviceGraphql.getAllByPersona(personaId);
  }
}
