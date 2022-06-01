import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_difucion/modules/publications/publications_controller.dart';
import 'package:login_difucion/styles/colors.dart';
import 'package:login_difucion/widgets/drawer_widget.dart';
import 'package:pluto_grid/pluto_grid.dart';

class PublicacionesPage extends GetResponsiveView<PublicationsController> {
  PublicacionesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          drawer: buildDrawer(),
          appBar: AppBar(
            title: const Text(
              'Publicaciones',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            backgroundColor: Colors.white,
            leading: Builder(builder: (context) {
              return IconButton(
                onPressed: () => Scaffold.of(context).openDrawer(),
                icon: Image.asset("assets/logo_drawer.png"),
              );
            }),
          ),
          backgroundColor: blueDifucion,
        ));
  }

  List<PlutoColumn> getColumns() {
    const columnSize = 4;
    final size = ((MediaQuery.of(Get.context!).size.width > 500)
            ? MediaQuery.of(Get.context!).size.width / columnSize
            : MediaQuery.of(Get.context!).size.width / 3) -
        5;
    List<PlutoColumn> columns = [
      PlutoColumn(
        title: 'VAL-1',
        field: 'VAL-1',
        type: PlutoColumnType.text(),
        width: size,
      ),
      PlutoColumn(
        title: 'VAL-2',
        field: 'VAL-2',
        type: PlutoColumnType.text(),
        width: size,
      ),
      PlutoColumn(
        title: 'accion'.tr,
        field: 'accion',
        frozen: PlutoColumnFrozen.right,
        enableContextMenu: false,
        type: PlutoColumnType.text(),
        width: size,
      ),
    ];
    return columns;
  }
}
