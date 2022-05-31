class MenuGraphql {
  static String mutationInsert = r"""
    mutation create ($object: menu_insert_input!){
      insert_menu_one(object: $object){
        id
      }
    }
  """;

  static String multationUpdate = r"""
    mutation update($id: Int, $object: menu_set_input) {
      update_menu(where: {id: {_eq: $id}}, _set: $object) {
        affected_rows
      }
    }
  """;

  static String mutationDelete = r"""
    mutation delete($id: Int) {
      delete_menu(where: {id: {_eq: $id}}) {
        affected_rows
      }
    }
  """;
  static String queryAll = r""" 
    query all($usuarioId: Int) {
      menu(where: {usuario: {id: {_eq: $usuarioId}}}, order_by: {fecha_hora: asc}) {
        id
        nombre
        icono
        url
        estado
        tipo
      }
    }
  """;
  static String queryById = r""" 
    query get ($id: Int) {
      menu(where: {id: {_eq: $id}}) {
        id
        nombre
        icono
        url
        estado
        tipo
      }
    }
  """;
}
