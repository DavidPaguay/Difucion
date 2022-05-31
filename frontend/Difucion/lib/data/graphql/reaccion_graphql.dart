class ReaccionGraphql {
  static String mutationInsert = r"""
    mutation create ($object: reaccion_insert_input!){
      insert_reaccion_one(object: $object){
        id
      }
    }
  """;

  static String multationUpdate = r"""
    mutation update($id: Int, $object: reaccion_set_input) {
      update_reaccion(where: {id: {_eq: $id}}, _set: $object) {
        affected_rows
      }
    }
  """;

  static String mutationDelete = r"""
    mutation delete($id: Int) {
      delete_reaccion(where: {id: {_eq: $id}}) {
        affected_rows
      }
    }
  """;
  static String queryAll = r""" 
    query all($usuarioId: Int) {
      reaccion(where: {usuario: {id: {_eq: $usuarioId}}}, order_by: {fecha_hora: asc}) {
        id
        fecha
        tipo
        estado
        comentario
        url
        estado
        grupo_red_social_id
      }
    }
  """;
  static String queryById = r""" 
    query get ($id: Int) {
      reaccion(where: {id: {_eq: $id}}) {
        id
        fecha
        tipo
        estado
        comentario
        url
        estado
        grupo_red_social_id
      }
    }
  """;
}
