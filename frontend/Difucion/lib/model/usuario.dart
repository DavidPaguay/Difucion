class Usuario {
  int id;
  String correo;
  String contrasenia;
  String nombre;
  String apellido;
  String estado;
  String foto;
  int rolId;

  Usuario({
    required this.id,
    required this.correo,
    required this.contrasenia,
    required this.nombre,
    required this.apellido,
    required this.estado,
    required this.foto,
    required this.rolId,
  });
}
