import 'package:get/get.dart';
import 'package:login_difucion/data/model/publicacion.dart';

import 'package:pluto_grid/pluto_grid.dart';

class PublicationsController extends GetxController {
  PlutoRow mapping(Publicacion data) {
    return PlutoRow(cells: {
      'id': PlutoCell(value: data.id),
      'descripcion': PlutoCell(value: data.contenido ?? ""),
      'preferencia': PlutoCell(value: data.palabrasClave ?? ""),
      'accion': PlutoCell(value: ""),
    });
  }
}
