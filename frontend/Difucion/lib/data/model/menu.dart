import 'package:login_difucion/data/model/abstract_model.dart';

class Menu extends AbstractModel {
  Menu({
    id,
    this.nombre,
    this.icono,
    this.estado,
    this.url,
    this.tipo,
    this.menuId,
  }) : super(id);

  String? nombre;
  String? icono;
  bool? estado;
  String? url;
  String? tipo;
  int? menuId;

  factory Menu.fromJson(Map<String, dynamic> json) => Menu(
        id: json["id"],
        nombre: json["nombre"],
        icono: json["icono"],
        url: json["url"],
        estado: json["estado"],
        tipo: json["tipo"],
      );

  @override
  Map<String, dynamic> toJson() => {
        "id": id,
        "nombre": nombre,
        "icono": icono,
        "url": url,
        "estado": estado,
        "tipo": tipo,
      };
}
