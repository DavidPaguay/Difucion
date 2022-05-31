import 'package:login_difucion/data/model/abstract_model.dart';

class RedSocial extends AbstractModel {
  RedSocial({
    id,
    this.descipcion,
    this.url,
  }) : super(id);

  String? descipcion;
  String? url;

  factory RedSocial.fromJson(Map<String, dynamic> json) => RedSocial(
        id: json["id"],
        descipcion: json["descipcion"],
        url: json["url"],
      );

  @override
  Map<String, dynamic> toJson() => {
        "id": id,
        "descipcion": descipcion,
        "url": url,
      };
}
