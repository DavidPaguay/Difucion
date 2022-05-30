import 'package:login_difucion/model/abstract_model.dart';

class Publicacion extends AbstractModel<int> {
  Publicacion(
      {id,
      this.contenido,
      this.palabrasClave,
      this.fecha,
      this.estado,
      this.usuarioId,
      this.plantillaId,
      this.reaccionId})
      : super(id);

  String? contenido;
  String? palabrasClave;
  String? fecha;
  String? estado;
  int? usuarioId;
  int? plantillaId;
  int? reaccionId;

  factory Publicacion.fromJson(Map<String, dynamic> json) => Publicacion(
        id: json["id"],
        contenido: json["contenido"],
        palabrasClave: json["palabrasClave"],
        fecha: json["fecha"],
        estado: json["estado"],
      );
  @override
  Map<String, dynamic> toJson() => {
        "id": id,
        "descripcion": contenido,
        "palabrasClave": palabrasClave,
        "fecha": fecha,
        "estado": estado,
        "usuario_id": usuarioId,
      };
}
