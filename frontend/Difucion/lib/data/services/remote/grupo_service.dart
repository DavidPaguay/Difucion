import 'package:login_difucion/data/graphql/grupo_graphql.dart';
import 'package:login_difucion/data/model/grupo.dart';
import 'package:login_difucion/data/services/remote/abstract_service.dart';

class GrupoService extends AbstractServiceGraphql<Grupo> {
  @override
  Future<Grupo> create(Grupo object) async {
    var result =
        await graphqlClient.mutation(GrupoGraphql.mutationInsert, variables: {
      'object': removeId(object),
    });
    object.id = result['data']['insert_grupo_one']['id'];
    return object;
  }

  @override
  Future<int?> update(Grupo object) async {
    var result =
        await graphqlClient.mutation(GrupoGraphql.multationUpdate, variables: {
      'id': object.id,
      'object': object.toJson(),
    });
    return result['data']['update_grupo']['affected_rows'];
  }

  Future<List<Grupo>?> getAllByPersona(int personaId) async {
    var result = await graphqlClient
        .query(GrupoGraphql.queryAll, variables: {'personaId': personaId});
    return (result['data']['grupo'] as List)
        .map((e) => Grupo.fromJson(e))
        .toList()
        .cast<Grupo>();
  }

  @override
  Future<Grupo> read(dynamic id) async {
    var result = await graphqlClient
        .query(GrupoGraphql.queryById, variables: {'id': id});
    return Grupo.fromJson(result['data']['grupo'][0]);
  }

  @override
  Future<int?> delete(Grupo object) async {
    var result = await graphqlClient
        .mutation(GrupoGraphql.mutationDelete, variables: {'id': object.id});
    return result['data']['delete_grupo']['affected_rows'];
  }
}
