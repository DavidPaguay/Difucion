class GrupoRedSocialGraphql {
  static String mutationInsert = r"""
    mutation create ($object: grupo_red_social_insert_input!){
      insert_grupo_red_social_one(object: $object){
        id
      }
    }
  """;

  static String multationUpdate = r"""
    mutation update($id: Int, $object: grupo_red_social_set_input) {
      update_grupo_red_social(where: {id: {_eq: $id}}, _set: $object) {
        affected_rows
      }
    }
  """;

  static String mutationDelete = r"""
    mutation delete($id: Int) {
      delete_grupo_red_social(where: {id: {_eq: $id}}) {
        affected_rows
      }
    }
  """;
  static String queryAll = r""" 
    query all($usuarioId: Int) {
      grupo_red_social(where: {usuario: {id: {_eq: $usuarioId}}}, order_by: {fecha_hora: asc}) {
        id
        redSocial_id
        grupo_id
        usuario
        contrasena
        comentario
        url
        estado
        token
      }
    }
  """;
  static String queryById = r""" 
    query get ($id: Int) {
      grupo_red_social(where: {id: {_eq: $id}}) {
        id
        redSocial_id
        grupo_id
        usuario
        contrasena
        comentario
        url
        estado
        token
        
      }
    }
  """;
}
