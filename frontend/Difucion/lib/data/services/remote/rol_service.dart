import 'package:login_difucion/data/graphql/rol_graphql.dart';
import 'package:login_difucion/data/model/rol.dart';
import 'package:login_difucion/data/services/remote/abstract_service.dart';

class RolService extends AbstractServiceGraphql<Rol> {
  @override
  Future<Rol> create(Rol object) async {
    var result =
        await graphqlClient.mutation(RolGraphql.mutationInsert, variables: {
      'object': removeId(object),
    });
    object.id = result['data']['insert_rol_one']['id'];
    return object;
  }

  @override
  Future<int?> update(Rol object) async {
    var result =
        await graphqlClient.mutation(RolGraphql.multationUpdate, variables: {
      'id': object.id,
      'object': object.toJson(),
    });
    return result['data']['update_rol']['affected_rows'];
  }

  Future<List<Rol>?> getAllByPersona(int personaId) async {
    var result = await graphqlClient
        .query(RolGraphql.queryAll, variables: {'personaId': personaId});
    return (result['data']['rol'] as List)
        .map((e) => Rol.fromJson(e))
        .toList()
        .cast<Rol>();
  }

  @override
  Future<Rol> read(dynamic id) async {
    var result =
        await graphqlClient.query(RolGraphql.queryById, variables: {'id': id});
    return Rol.fromJson(result['data']['rol'][0]);
  }

  @override
  Future<int?> delete(Rol object) async {
    var result = await graphqlClient
        .mutation(RolGraphql.mutationDelete, variables: {'id': object.id});
    return result['data']['delete_rol']['affected_rows'];
  }
}
