import 'package:login_difucion/data/graphql/publicacion_graphql.dart';
import 'package:login_difucion/data/model/publicacion.dart';
import 'package:login_difucion/data/services/remote/abstract_service.dart';

class PublicacionService extends AbstractServiceGraphql<Publicacion> {
  @override
  Future<Publicacion> create(Publicacion object) async {
    var result = await graphqlClient
        .mutation(PublicacionGraphql.mutationInsert, variables: {
      'object': removeId(object),
    });
    object.id = result['data']['insert_publicacion_one']['id'];
    return object;
  }

  @override
  Future<int?> update(Publicacion object) async {
    var result = await graphqlClient
        .mutation(PublicacionGraphql.multationUpdate, variables: {
      'id': object.id,
      'object': object.toJson(),
    });
    return result['data']['update_publicacion']['affected_rows'];
  }

  Future<List<Publicacion>?> getAllByPersona(int personaId) async {
    var result = await graphqlClient.query(PublicacionGraphql.queryAll,
        variables: {'personaId': personaId});
    return (result['data']['publicacion'] as List)
        .map((e) => Publicacion.fromJson(e))
        .toList()
        .cast<Publicacion>();
  }

  @override
  Future<Publicacion> read(dynamic id) async {
    var result = await graphqlClient
        .query(PublicacionGraphql.queryById, variables: {'id': id});
    return Publicacion.fromJson(result['data']['publicacion'][0]);
  }

  @override
  Future<int?> delete(Publicacion object) async {
    var result = await graphqlClient.mutation(PublicacionGraphql.mutationDelete,
        variables: {'id': object.id});
    return result['data']['delete_publicacion']['affected_rows'];
  }
}
