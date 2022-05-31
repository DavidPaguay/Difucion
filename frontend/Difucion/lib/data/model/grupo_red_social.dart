import 'package:login_difucion/data/model/abstract_model.dart';

class GrupoRedSocial extends AbstractModel {
  GrupoRedSocial({
    id,
    this.usuario,
    this.contrasena,
    this.url,
    this.estado,
    this.grupoId,
    this.token,
    this.redSocialId,
  }) : super(id);

  String? usuario;
  String? contrasena;
  String? url;
  String? estado;
  String? token;
  int? grupoId;
  int? redSocialId;

  factory GrupoRedSocial.fromJson(Map<String, dynamic> json) => GrupoRedSocial(
        id: json["id"],
        redSocialId: json["redSocialId"],
        grupoId: json["grupoId"],
        usuario: json["usuario"],
        contrasena: json["contrasena"],
        url: json["url"],
        estado: json["estado"],
        token: json["token"],
      );

  @override
  Map<String, dynamic> toJson() => {
        "id": id,
        "redSocialId": redSocialId,
        "grupoId": grupoId,
        "usuario": usuario,
        "contrasena": contrasena,
        "url": url,
        "estado": estado,
        "token": token,
      };
}
