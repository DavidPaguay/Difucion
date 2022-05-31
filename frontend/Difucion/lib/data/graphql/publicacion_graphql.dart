class PublicacionGraphql {
  static String mutationInsert = r"""
    mutation create ($object: publicacion_insert_input!){
      insert_publicacion_one(object: $object){
        id
      }
    }
  """;

  static String multationUpdate = r"""
    mutation update($id: Int, $object: publicacion_set_input) {
      update_publicacion(where: {id: {_eq: $id}}, _set: $object) {
        affected_rows
      }
    }
  """;

  static String mutationDelete = r"""
    mutation delete($id: Int) {
      delete_publicacion(where: {id: {_eq: $id}}) {
        affected_rows
      }
    }
  """;
  static String queryAll = r""" 
    query all($usuarioId: Int) {
      publicacion(where: {usuario: {id: {_eq: $usuarioId}}}, order_by: {fecha_hora: asc}) {
        id
        fecha
        contenido
        estado
        titulo
        palabras_clave
        usuario_id
        plantilla_id
        reaccion_id
      }
    }
  """;
  static String queryById = r""" 
    query get ($id: Int) {
      publicacion(where: {id: {_eq: $id}}) {
        id
        fecha
        contenido
        estado
        titulo
        palabras_clave
        usuario_id
        plantilla_id
        reaccion_id
      }
    }
  """;
}
