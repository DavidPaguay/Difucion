class GrupoGraphql {
  static String mutationInsert = r"""
    mutation create ($object: grupo_insert_input!){
      insert_grupo_one(object: $object){
        id
      }
    }
  """;

  static String multationUpdate = r"""
    mutation update($id: Int, $object: grupo_set_input) {
      update_grupo(where: {id: {_eq: $id}}, _set: $object) {
        affected_rows
      }
    }
  """;

  static String mutationDelete = r"""
    mutation delete($id: Int) {
      delete_grupo(where: {id: {_eq: $id}}) {
        affected_rows
      }
    }
  """;
  static String queryAll = r""" 
    query all($usuarioId: Int) {
      grupo(where: {usuario: {id: {_eq: $usuarioId}}}, order_by: {fecha_hora: asc}) {
        id
        descripcion
        nombre
        foto
        padre_id
      }
    }
  """;
  static String queryById = r""" 
    query get ($id: Int) {
      grupo(where: {id: {_eq: $id}}) {
        id
        descripcion
        nombre
        foto
        padre_id
      }
    }
  """;
}
