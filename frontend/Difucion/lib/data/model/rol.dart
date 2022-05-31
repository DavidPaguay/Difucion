import 'package:login_difucion/data/model/abstract_model.dart';

class Rol extends AbstractModel {
  Rol({
    id,
    this.descripcion,
    this.estado,
    this.accesoId,
  }) : super(id);

  String? descripcion;
  bool? estado;
  int? accesoId;

  factory Rol.fromJson(Map<String, dynamic> json) => Rol(
        id: json["id"],
        descripcion: json["descripcion"],
        estado: json["estado"],
        accesoId: json["acceso_id"],
      );

  @override
  Map<String, dynamic> toJson() => {
        "id": id,
        "descripcion": descripcion,
        "estado": estado,
        "acceso_id": accesoId,
      };
}
