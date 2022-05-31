import 'package:login_difucion/data/model/grupo_red_social.dart';
import 'package:login_difucion/data/repositories/remote/abstract_repository.dart';
import 'package:login_difucion/data/services/remote/grupo_red_social_service.dart';

class GrupoRedSocialRepository
    extends AbstractRepository<GrupoRedSocialService, GrupoRedSocial> {
  Future<List<GrupoRedSocial>?> getAllByPersona(int personaId) async {
    return serviceGraphql.getAllByPersona(personaId);
  }
}
