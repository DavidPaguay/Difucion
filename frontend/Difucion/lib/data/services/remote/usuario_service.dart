import 'package:login_difucion/data/graphql/usuario_graphql.dart';
import 'package:login_difucion/data/model/usuario.dart';
import 'package:login_difucion/data/services/remote/abstract_service.dart';

class UsuarioService extends AbstractServiceGraphql<Usuario> {
  @override
  Future<Usuario> read(dynamic id) async {
    var result = await graphqlClient
        .query(UsuarioGraphql.queryById, variables: {'id': id});
    return Usuario.fromJson(result['data']['usuario'][0]);
  }

  @override
  Future<Usuario> create(Usuario object) async {
    var result =
        await graphqlClient.mutation(UsuarioGraphql.mutationInsert, variables: {
      'object': removeId(object),
    });
    object.id = result['data']['insert_usuario_one']['id'];
    return object;
  }

  @override
  Future<int?> update(Usuario object) async {
    var result = await graphqlClient.mutation(
      UsuarioGraphql.mutationUpdate,
      variables: {
        'id': object.id,
        'object': object.toJson(),
      },
    );
    return result['data']['update_usuario']['affected_rows'];
  }
}
