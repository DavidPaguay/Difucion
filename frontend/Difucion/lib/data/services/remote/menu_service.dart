import 'package:login_difucion/data/graphql/menu_graphql.dart';
import 'package:login_difucion/data/model/menu.dart';
import 'package:login_difucion/data/services/remote/abstract_service.dart';

class MenuService extends AbstractServiceGraphql<Menu> {
  @override
  Future<Menu> create(Menu object) async {
    var result =
        await graphqlClient.mutation(MenuGraphql.mutationInsert, variables: {
      'object': removeId(object),
    });
    object.id = result['data']['insert_menu_one']['id'];
    return object;
  }

  @override
  Future<int?> update(Menu object) async {
    var result =
        await graphqlClient.mutation(MenuGraphql.multationUpdate, variables: {
      'id': object.id,
      'object': object.toJson(),
    });
    return result['data']['update_menu']['affected_rows'];
  }

  Future<List<Menu>?> getAllByPersona(int personaId) async {
    var result = await graphqlClient
        .query(MenuGraphql.queryAll, variables: {'personaId': personaId});
    return (result['data']['menu'] as List)
        .map((e) => Menu.fromJson(e))
        .toList()
        .cast<Menu>();
  }

  @override
  Future<Menu> read(dynamic id) async {
    var result =
        await graphqlClient.query(MenuGraphql.queryById, variables: {'id': id});
    return Menu.fromJson(result['data']['menu'][0]);
  }

  @override
  Future<int?> delete(Menu object) async {
    var result = await graphqlClient
        .mutation(MenuGraphql.mutationDelete, variables: {'id': object.id});
    return result['data']['delete_menu']['affected_rows'];
  }
}
