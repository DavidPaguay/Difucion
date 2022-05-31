class AccesoGraphql {
  static String mutationInsert = r"""
    mutation create ($object: acceso_insert_input!){
      insert_acceso_one(object: $object){
        id
      }
    }
  """;

  static String multationUpdate = r"""
    mutation update($id: Int, $object: acceso_set_input) {
      update_acceso(where: {id: {_eq: $id}}, _set: $object) {
        affected_rows
      }
    }
  """;

  static String mutationDelete = r"""
    mutation delete($id: Int) {
      delete_acceso(where: {id: {_eq: $id}}) {
        affected_rows
      }
    }
  """;
  static String queryAll = r""" 
    query all($usuarioId: Int) {
      acceso(where: {usuario: {id: {_eq: $usuarioId}}}, order_by: {fecha_hora: asc}) {
        id
        fecha
        estado
        menu_id
      }
    }
  """;
  static String queryById = r""" 
    query get ($id: Int) {
      acceso(where: {id: {_eq: $id}}) {
        id
        fecha
        estado
        menu_id
      }
    }
  """;
}
