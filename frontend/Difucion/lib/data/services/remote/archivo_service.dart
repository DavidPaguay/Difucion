import 'package:login_difucion/data/graphql/archivo_graphql.dart';
import 'package:login_difucion/data/model/archivo.dart';
import 'package:login_difucion/data/services/remote/abstract_service.dart';

class ArchivoService extends AbstractServiceGraphql<Archivo> {
  @override
  Future<Archivo> create(Archivo object) async {
    var result =
        await graphqlClient.mutation(ArchivoGraphql.mutationInsert, variables: {
      'object': removeId(object),
    });
    object.id = result['data']['insert_archivo_one']['id'];
    return object;
  }

  @override
  Future<int?> update(Archivo object) async {
    var result = await graphqlClient
        .mutation(ArchivoGraphql.multationUpdate, variables: {
      'id': object.id,
      'object': object.toJson(),
    });
    return result['data']['update_archivo']['affected_rows'];
  }

  Future<List<Archivo>?> getAllByPersona(int personaId) async {
    var result = await graphqlClient
        .query(ArchivoGraphql.queryAll, variables: {'personaId': personaId});
    return (result['data']['archivo'] as List)
        .map((e) => Archivo.fromJson(e))
        .toList()
        .cast<Archivo>();
  }

  @override
  Future<Archivo> read(dynamic id) async {
    var result = await graphqlClient
        .query(ArchivoGraphql.queryById, variables: {'id': id});
    return Archivo.fromJson(result['data']['archivo'][0]);
  }

  @override
  Future<int?> delete(Archivo object) async {
    var result = await graphqlClient
        .mutation(ArchivoGraphql.mutationDelete, variables: {'id': object.id});
    return result['data']['delete_archivo']['affected_rows'];
  }
}
