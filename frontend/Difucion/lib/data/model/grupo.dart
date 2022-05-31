import 'package:login_difucion/data/model/abstract_model.dart';

class Grupo extends AbstractModel {
  Grupo({
    id,
    this.nombre,
    this.descripcion,
    this.foto,
    this.padreId,
  }) : super(id);

  String? nombre;
  String? descripcion;
  String? foto;
  int? padreId;

  factory Grupo.fromJson(Map<String, dynamic> json) => Grupo(
        id: json["id"],
        descripcion: json["descripcion"],
        nombre: json["nombre"],
        foto: json["foto"],
        padreId: json["padreId"],
      );

  @override
  Map<String, dynamic> toJson() => {
        "id": id,
        "descripcion": descripcion,
        "nombre": nombre,
        "foto": foto,
        "padreId": padreId,
      };
}
