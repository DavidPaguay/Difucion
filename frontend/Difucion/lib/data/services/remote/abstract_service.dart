import 'package:get/instance_manager.dart';
import 'package:hasura_connect/hasura_connect.dart';
import 'package:login_difucion/data/model/abstract_model.dart';
import 'package:login_difucion/utils/conecction.dart';

abstract class AbstractServiceGraphql<T extends AbstractModel> {
  final HasuraConnect graphqlClient =
      Get.find<GraphqlConnection>().clientToQuery();

  Map<String, dynamic> removeId(T object) {
    var obj = object.toJson();
    obj.remove("id");
    return obj;
  }

  Future<T> create(T object) {
    throw UnimplementedError();
  }

  Future<dynamic> update(T object) {
    throw UnimplementedError();
  }

  Future<List<T>?> getAll() {
    throw UnimplementedError();
  }

  Future<T> read(dynamic id) {
    throw UnimplementedError();
  }

  Future<dynamic> delete(T object) {
    throw UnimplementedError();
  }
}
