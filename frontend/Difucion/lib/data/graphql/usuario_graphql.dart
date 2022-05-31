class UsuarioGraphql {
  static String queryById = r"""
    query read ($id: Int) {
    Usuario(where: {id: {_eq: $id}}){
      id
      correo
      contrasena
      nombre
      apellido
      estado
      foto
      rolId
    }
  }
  """;
  static String mutationInsert = r"""
    mutation create($object: Usuario_insert_input!) {
      insert_Usuario_one(object: $object){
        id
      }
    }
  """;

  static String mutationUpdate = r"""
    mutation update($id: Int, $object: Usuario_set_input!) {
      update_Usuario(where: {id: {_eq: $id}}, _set: $object) {
        affected_rows
      }
    }
  """;
}
