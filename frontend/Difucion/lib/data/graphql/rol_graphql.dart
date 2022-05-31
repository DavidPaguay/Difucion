class RolGraphql {
  static String mutationInsert = r"""
    mutation create ($object: rol_insert_input!){
      insert_rol_one(object: $object){
        id
      }
    }
  """;

  static String multationUpdate = r"""
    mutation update($id: Int, $object: rol_set_input) {
      update_rol(where: {id: {_eq: $id}}, _set: $object) {
        affected_rows
      }
    }
  """;

  static String mutationDelete = r"""
    mutation delete($id: Int) {
      delete_rol(where: {id: {_eq: $id}}) {
        affected_rows
      }
    }
  """;
  static String queryAll = r""" 
    query all($usuarioId: Int) {
      rol(where: {usuario: {id: {_eq: $usuarioId}}}, order_by: {fecha_hora: asc}) {
        id
        descripcion
        estado
        acceso_id
      }
    }
  """;
  static String queryById = r""" 
    query get ($id: Int) {
      rol(where: {id: {_eq: $id}}) {
        id
        descripcion
        estado
        acceso_id
      }
    }
  """;
}
