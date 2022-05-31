import 'package:login_difucion/data/graphql/plantilla_graphql.dart';
import 'package:login_difucion/data/model/plantilla.dart';
import 'package:login_difucion/data/services/remote/abstract_service.dart';

class PlantillaService extends AbstractServiceGraphql<Plantilla> {
  @override
  Future<Plantilla> create(Plantilla object) async {
    var result = await graphqlClient
        .mutation(PlantillaGraphql.mutationInsert, variables: {
      'object': removeId(object),
    });
    object.id = result['data']['insert_plantilla_one']['id'];
    return object;
  }

  @override
  Future<int?> update(Plantilla object) async {
    var result = await graphqlClient
        .mutation(PlantillaGraphql.multationUpdate, variables: {
      'id': object.id,
      'object': object.toJson(),
    });
    return result['data']['update_plantilla']['affected_rows'];
  }

  Future<List<Plantilla>?> getAllByPersona(int personaId) async {
    var result = await graphqlClient
        .query(PlantillaGraphql.queryAll, variables: {'personaId': personaId});
    return (result['data']['plantilla'] as List)
        .map((e) => Plantilla.fromJson(e))
        .toList()
        .cast<Plantilla>();
  }

  @override
  Future<Plantilla> read(dynamic id) async {
    var result = await graphqlClient
        .query(PlantillaGraphql.queryById, variables: {'id': id});
    return Plantilla.fromJson(result['data']['plantilla'][0]);
  }

  @override
  Future<int?> delete(Plantilla object) async {
    var result = await graphqlClient.mutation(PlantillaGraphql.mutationDelete,
        variables: {'id': object.id});
    return result['data']['delete_plantilla']['affected_rows'];
  }
}
