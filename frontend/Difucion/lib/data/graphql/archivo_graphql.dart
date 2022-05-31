class ArchivoGraphql {
  static String mutationInsert = r"""
    mutation create ($object: archivo_insert_input!){
      insert_archivo_one(object: $object){
        id
      }
    }
  """;

  static String multationUpdate = r"""
    mutation update($id: Int, $object: archivo_set_input) {
      update_archivo(where: {id: {_eq: $id}}, _set: $object) {
        affected_rows
      }
    }
  """;

  static String mutationDelete = r"""
    mutation delete($id: Int) {
      delete_archivo(where: {id: {_eq: $id}}) {
        affected_rows
      }
    }
  """;
  static String queryAll = r""" 
    query all($usuarioId: Int) {
      archivo(where: {usuario: {id: {_eq: $usuarioId}}}, order_by: {fecha_hora: asc}) {
        id
        url
        tipo
        plantilla_id
      }
    }
  """;
  static String queryById = r""" 
    query get ($id: Int) {
      archivo(where: {id: {_eq: $id}}) {
        id
        url
        tipo
        plantilla_id
      }
    }
  """;
}
