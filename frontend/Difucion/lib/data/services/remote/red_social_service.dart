import 'package:login_difucion/data/graphql/red_social_graphql.dart';
import 'package:login_difucion/data/model/red_social.dart';
import 'package:login_difucion/data/services/remote/abstract_service.dart';

class RedSocialService extends AbstractServiceGraphql<RedSocial> {
  @override
  Future<RedSocial> create(RedSocial object) async {
    var result = await graphqlClient
        .mutation(RedSocialGraphql.mutationInsert, variables: {
      'object': removeId(object),
    });
    object.id = result['data']['insert_red_social_one']['id'];
    return object;
  }

  @override
  Future<int?> update(RedSocial object) async {
    var result = await graphqlClient
        .mutation(RedSocialGraphql.multationUpdate, variables: {
      'id': object.id,
      'object': object.toJson(),
    });
    return result['data']['update_red_social']['affected_rows'];
  }

  Future<List<RedSocial>?> getAllByPersona(int personaId) async {
    var result = await graphqlClient
        .query(RedSocialGraphql.queryAll, variables: {'personaId': personaId});
    return (result['data']['red_social'] as List)
        .map((e) => RedSocial.fromJson(e))
        .toList()
        .cast<RedSocial>();
  }

  @override
  Future<RedSocial> read(dynamic id) async {
    var result = await graphqlClient
        .query(RedSocialGraphql.queryById, variables: {'id': id});
    return RedSocial.fromJson(result['data']['red_social'][0]);
  }

  @override
  Future<int?> delete(RedSocial object) async {
    var result = await graphqlClient.mutation(RedSocialGraphql.mutationDelete,
        variables: {'id': object.id});
    return result['data']['delete_red_social']['affected_rows'];
  }
}
