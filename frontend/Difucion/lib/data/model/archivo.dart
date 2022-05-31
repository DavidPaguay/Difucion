import 'package:login_difucion/data/model/abstract_model.dart';

class Archivo extends AbstractModel {
  Archivo({
    id,
    this.url,
    this.tipo,
    this.plantillaId,
  }) : super(id);

  String? url;
  String? tipo;
  int? plantillaId;

  factory Archivo.fromJson(Map<String, dynamic> json) => Archivo(
        id: json["id"],
        url: json["url"],
        tipo: json["tipo"],
        plantillaId: json["plantillaId"],
      );

  @override
  Map<String, dynamic> toJson() => {
        "id": id,
        "url": url,
        "tipo": tipo,
        "plantillaId": plantillaId,
      };
}
