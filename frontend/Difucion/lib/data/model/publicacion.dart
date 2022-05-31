import 'package:login_difucion/data/model/abstract_model.dart';

class Publicacion extends AbstractModel<int> {
  Publicacion(
      {id,
      this.contenido,
      this.palabrasClave,
      this.fecha,
      this.estado,
      this.titulo,
      this.usuarioId,
      this.plantillaId,
      this.reaccionId})
      : super(id);

  String? contenido;
  String? palabrasClave;
  String? fecha;
  String? estado;
  String? titulo;
  int? usuarioId;
  int? plantillaId;
  int? reaccionId;

  factory Publicacion.fromJson(Map<String, dynamic> json) => Publicacion(
        id: json["id"],
        fecha: json["fecha"],
        contenido: json["contenido"],
        estado: json["estado"],
        titulo: json["titulo"],
        palabrasClave: json["palabras_clave"],
        usuarioId: json["usuario_id"],
        plantillaId: json["plantilla_id"],
        reaccionId: json["reaccion_id"],
      );
  @override
  Map<String, dynamic> toJson() => {
        "id": id,
        "fecha": fecha,
        "contenido": contenido,
        "estado": estado,
        "titulo": titulo,
        "palabras_clave": palabrasClave,
        "usuario_id": usuarioId,
        "plantilla_id": plantillaId,
        "reaccion_id": reaccionId,
      };
}
