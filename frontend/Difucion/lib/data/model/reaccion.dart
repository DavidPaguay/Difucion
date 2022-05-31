import 'package:login_difucion/data/model/abstract_model.dart';

class Reaccion extends AbstractModel {
  Reaccion({
    id,
    this.fecha,
    this.tipo,
    this.comentario,
    this.url,
    this.estado,
    this.grupoRedSocialId,
  }) : super(id);

  String? fecha;
  String? tipo;
  String? comentario;
  String? url;
  bool? estado;
  int? grupoRedSocialId;

  factory Reaccion.fromJson(Map<String, dynamic> json) => Reaccion(
        id: json["id"],
        fecha: json["fecha"],
        tipo: json["tipo"],
        comentario: json["comentario"],
        url: json["url"],
        estado: json["estado"],
        grupoRedSocialId: json["grupo_red_social_id"],
      );

  @override
  Map<String, dynamic> toJson() => {
        "id": id,
        "fecha": fecha,
        "tipo": tipo,
        "comentario": comentario,
        "url": url,
        "estado": estado,
        "grupo_red_social_id": grupoRedSocialId,
      };
}
