class RedSocialGraphql {
  static String mutationInsert = r"""
    mutation create ($object: red_social_insert_input!){
      insert_red_social_one(object: $object){
        id
      }
    }
  """;

  static String multationUpdate = r"""
    mutation update($id: Int, $object: red_social_set_input) {
      update_red_social(where: {id: {_eq: $id}}, _set: $object) {
        affected_rows
      }
    }
  """;

  static String mutationDelete = r"""
    mutation delete($id: Int) {
      delete_red_social(where: {id: {_eq: $id}}) {
        affected_rows
      }
    }
  """;
  static String queryAll = r""" 
    query all($usuarioId: Int) {
      red_social(where: {usuario: {id: {_eq: $usuarioId}}}, order_by: {fecha_hora: asc}) {
        id
        descripcion
        url
      }
    }
  """;
  static String queryById = r""" 
    query get ($id: Int) {
      red_social(where: {id: {_eq: $id}}) {
        id
        descripcion
        url
      }
    }
  """;
}
