class PlantillaGraphql {
  static String mutationInsert = r"""
    mutation create ($object: plantilla_insert_input!){
      insert_plantilla_one(object: $object){
        id
      }
    }
  """;

  static String multationUpdate = r"""
    mutation update($id: Int, $object: plantilla_set_input) {
      update_plantilla(where: {id: {_eq: $id}}, _set: $object) {
        affected_rows
      }
    }
  """;

  static String mutationDelete = r"""
    mutation delete($id: Int) {
      delete_plantilla(where: {id: {_eq: $id}}) {
        affected_rows
      }
    }
  """;
  static String queryAll = r""" 
    query all($usuarioId: Int) {
      plantilla(where: {usuario: {id: {_eq: $usuarioId}}}, order_by: {fecha_hora: asc}) {
        id
        texto
        fecha
        tipo
        red_social_id
      }
    }
  """;
  static String queryById = r""" 
    query get ($id: Int) {
      plantilla(where: {id: {_eq: $id}}) {
        id
        texto
        fecha
        tipo
        red_social_id
      }
    }
  """;
}
