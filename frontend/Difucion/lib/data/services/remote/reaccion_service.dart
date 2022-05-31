import 'package:login_difucion/data/graphql/reaccion_graphql.dart';
import 'package:login_difucion/data/model/reaccion.dart';
import 'package:login_difucion/data/services/remote/abstract_service.dart';

class ReaccionService extends AbstractServiceGraphql<Reaccion> {
  @override
  Future<Reaccion> create(Reaccion object) async {
    var result = await graphqlClient
        .mutation(ReaccionGraphql.mutationInsert, variables: {
      'object': removeId(object),
    });
    object.id = result['data']['insert_reaccion_one']['id'];
    return object;
  }

  @override
  Future<int?> update(Reaccion object) async {
    var result = await graphqlClient
        .mutation(ReaccionGraphql.multationUpdate, variables: {
      'id': object.id,
      'object': object.toJson(),
    });
    return result['data']['update_reaccion']['affected_rows'];
  }

  Future<List<Reaccion>?> getAllByPersona(int personaId) async {
    var result = await graphqlClient
        .query(ReaccionGraphql.queryAll, variables: {'personaId': personaId});
    return (result['data']['reaccion'] as List)
        .map((e) => Reaccion.fromJson(e))
        .toList()
        .cast<Reaccion>();
  }

  @override
  Future<Reaccion> read(dynamic id) async {
    var result = await graphqlClient
        .query(ReaccionGraphql.queryById, variables: {'id': id});
    return Reaccion.fromJson(result['data']['reaccion'][0]);
  }

  @override
  Future<int?> delete(Reaccion object) async {
    var result = await graphqlClient
        .mutation(ReaccionGraphql.mutationDelete, variables: {'id': object.id});
    return result['data']['delete_reaccion']['affected_rows'];
  }
}
