import 'package:login_difucion/data/model/abstract_model.dart';

class Plantilla extends AbstractModel {
  Plantilla({
    id,
    this.texto,
    this.fecha,
    this.tipo,
    this.redSocialId,
  }) : super(id);

  String? texto;
  String? fecha;
  String? tipo;
  int? redSocialId;

  factory Plantilla.fromJson(Map<String, dynamic> json) => Plantilla(
        id: json["id"],
        texto: json["texto"],
        fecha: json["fecha"],
        tipo: json["tipo"],
        redSocialId: json["redSocialId"],
      );

  @override
  Map<String, dynamic> toJson() => {
        "id": id,
        "texto": texto,
        "fecha": fecha,
        "tipo": tipo,
        "redSocialId": redSocialId,
      };
}
