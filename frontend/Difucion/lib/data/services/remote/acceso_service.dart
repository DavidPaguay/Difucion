import 'package:login_difucion/data/graphql/acceso_graphql.dart';
import 'package:login_difucion/data/model/acceso.dart';
import 'package:login_difucion/data/services/remote/abstract_service.dart';

class AccesoService extends AbstractServiceGraphql<Acceso> {
  @override
  Future<Acceso> create(Acceso object) async {
    var result =
        await graphqlClient.mutation(AccesoGraphql.mutationInsert, variables: {
      'object': removeId(object),
    });
    object.id = result['data']['insert_acceso_one']['id'];
    return object;
  }

  @override
  Future<int?> update(Acceso object) async {
    var result =
        await graphqlClient.mutation(AccesoGraphql.multationUpdate, variables: {
      'id': object.id,
      'object': object.toJson(),
    });
    return result['data']['update_acceso']['affected_rows'];
  }

  Future<List<Acceso>?> getAllByPersona(int personaId) async {
    var result = await graphqlClient
        .query(AccesoGraphql.queryAll, variables: {'personaId': personaId});
    return (result['data']['acceso'] as List)
        .map((e) => Acceso.fromJson(e))
        .toList()
        .cast<Acceso>();
  }

  @override
  Future<Acceso> read(dynamic id) async {
    var result = await graphqlClient
        .query(AccesoGraphql.queryById, variables: {'id': id});
    return Acceso.fromJson(result['data']['acceso'][0]);
  }

  @override
  Future<int?> delete(Acceso object) async {
    var result = await graphqlClient
        .mutation(AccesoGraphql.mutationDelete, variables: {'id': object.id});
    return result['data']['delete_acceso']['affected_rows'];
  }
}
