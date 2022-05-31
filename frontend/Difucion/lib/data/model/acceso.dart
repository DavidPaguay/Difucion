import 'package:login_difucion/data/model/abstract_model.dart';

class Acceso extends AbstractModel {
  Acceso({
    id,
    this.fecha,
    this.estado,
    this.menuId,
  }) : super(id);

  String? fecha;
  bool? estado;
  int? menuId;

  factory Acceso.fromJson(Map<String, dynamic> json) => Acceso(
        id: json["id"],
        fecha: json["fecha"],
        estado: json["estado"],
        menuId: json["menuId"],
      );

  @override
  Map<String, dynamic> toJson() => {
        "id": id,
        "fecha": fecha,
        "estado": estado,
        "menuId": menuId,
      };
}
