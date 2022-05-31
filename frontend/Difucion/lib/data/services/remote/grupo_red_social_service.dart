import 'package:login_difucion/data/graphql/grupo_red_social_graphql.dart';
import 'package:login_difucion/data/model/grupo_red_social.dart';
import 'package:login_difucion/data/services/remote/abstract_service.dart';

class GrupoRedSocialService extends AbstractServiceGraphql<GrupoRedSocial> {
  @override
  Future<GrupoRedSocial> create(GrupoRedSocial object) async {
    var result = await graphqlClient
        .mutation(GrupoRedSocialGraphql.mutationInsert, variables: {
      'object': removeId(object),
    });
    object.id = result['data']['insert_grupo_red_social_one']['id'];
    return object;
  }

  @override
  Future<int?> update(GrupoRedSocial object) async {
    var result = await graphqlClient
        .mutation(GrupoRedSocialGraphql.multationUpdate, variables: {
      'id': object.id,
      'object': object.toJson(),
    });
    return result['data']['update_grupo_red_social']['affected_rows'];
  }

  Future<List<GrupoRedSocial>?> getAllByPersona(int personaId) async {
    var result = await graphqlClient.query(GrupoRedSocialGraphql.queryAll,
        variables: {'personaId': personaId});
    return (result['data']['grupo_red_social'] as List)
        .map((e) => GrupoRedSocial.fromJson(e))
        .toList()
        .cast<GrupoRedSocial>();
  }

  @override
  Future<GrupoRedSocial> read(dynamic id) async {
    var result = await graphqlClient
        .query(GrupoRedSocialGraphql.queryById, variables: {'id': id});
    return GrupoRedSocial.fromJson(result['data']['grupo_red_social'][0]);
  }

  @override
  Future<int?> delete(GrupoRedSocial object) async {
    var result = await graphqlClient.mutation(
        GrupoRedSocialGraphql.mutationDelete,
        variables: {'id': object.id});
    return result['data']['delete_grupo_red_social']['affected_rows'];
  }
}
