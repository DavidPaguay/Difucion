import 'package:login_difucion/data/model/abstract_model.dart';

class Usuario extends AbstractModel {
  Usuario({
    id,
    this.correo,
    this.contrasena,
    this.nombre,
    this.apellido,
    this.estado,
    this.foto,
    this.rolId,
  }) : super(id);

  String? correo;
  String? contrasena;
  String? nombre;
  String? apellido;
  bool? estado;
  String? foto;
  int? rolId;

  factory Usuario.fromJson(Map<String, dynamic> json) => Usuario(
        id: json["id"],
        correo: json["correo"],
        contrasena: json["contrasena"],
        nombre: json["nombre"],
        apellido: json["apellido"],
        estado: json["estado"],
        foto: json["url"],
        rolId: json["rolId"],
      );

  @override
  Map<String, dynamic> toJson() => {
        "id": id,
        "correo": correo,
        "contrasena": contrasena,
        "nombre": nombre,
        "apellido": apellido,
        "estado": estado,
        "rolId": rolId,
      };
}
