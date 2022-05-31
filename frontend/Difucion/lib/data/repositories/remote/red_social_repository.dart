import 'package:login_difucion/data/model/red_social.dart';
import 'package:login_difucion/data/repositories/remote/abstract_repository.dart';
import 'package:login_difucion/data/services/remote/red_social_service.dart';

class RedSocialRepository
    extends AbstractRepository<RedSocialService, RedSocial> {
  Future<List<RedSocial>?> getAllByPersona(int personaId) async {
    return serviceGraphql.getAllByPersona(personaId);
  }
}
