class UsuarioGraphql {
  static String queryById = r"""
    query read ($id: Int) {
    usuario(where: {id: {_eq: $id}}){
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
      insert_usuario_one(object: $object){
        id
      }
    }
  """;

  static String mutationUpdate = r"""
    mutation update($id: Int, $object: Usuario_set_input!) {
      update_usuario(where: {id: {_eq: $id}}, _set: $object) {
        affected_rows
      }
    }
  """;
  static String mutationDelete = r"""
    mutation delete($id: Int) {
      delete_usuario(where: {id: {_eq: $id}}) {
        affected_rows
      }
    }
  """;
}
