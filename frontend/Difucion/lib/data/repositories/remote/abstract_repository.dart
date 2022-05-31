import 'package:get/instance_manager.dart';
import 'package:login_difucion/data/model/abstract_model.dart';
import 'package:login_difucion/data/services/remote/abstract_service.dart';

abstract class AbstractRepository<S extends AbstractServiceGraphql<T>,
    T extends AbstractModel> {
  final S serviceGraphql = Get.find<S>();

  Future<T> create(T object) async {
    return await serviceGraphql.create(object);
  }

  Future<dynamic> update(T object) async {
    return await serviceGraphql.update(object);
  }

  Future<List<T>?> getAll() async {
    return await serviceGraphql.getAll();
  }

  Future<T> read(dynamic object) async {
    return await serviceGraphql.read(object);
  }

  Future<dynamic> delete(T object) async {
    return await serviceGraphql.delete(object);
  }
}
