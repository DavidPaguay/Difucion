import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pluto_grid/pluto_grid.dart';
import 'package:taxisbot/app/utils/responsive_grid.dart';

class FilterPlutoCustom implements PlutoFilterType {
  @override
  String get title => 'Contiene';

  @override
  get compare => ({
        required String? base,
        required String? search,
        required PlutoColumn? column,
      }) {
        var keys = search!.split(',').map((e) => e.toUpperCase()).toList();
        return keys.contains(base!.toUpperCase());
      };
  const FilterPlutoCustom();
}

PlutoGridConfiguration setConfigPlutto() {
  return PlutoGridConfiguration(
    columnFilterConfig: PlutoGridColumnFilterConfig(
      filters: [
        ...FilterHelper.defaultFilters,
        const FilterPlutoCustom(),
      ],
      resolveDefaultColumnFilter: (column, resolver) {
        if (column.field == 'text') {
          return resolver<PlutoFilterTypeContains>() as PlutoFilterType;
        } else if (column.field == 'number') {
          return resolver<PlutoFilterTypeGreaterThan>() as PlutoFilterType;
        } else if (column.field == 'date') {
          return resolver<PlutoFilterTypeLessThan>() as PlutoFilterType;
        } else if (column.field == 'select') {
          return resolver<FilterPlutoCustom>() as PlutoFilterType;
        } else {
          return resolver<PlutoFilterTypeContains>() as PlutoFilterType;
        }
      },
    ),
  );
}

PlutoPagination setPagePagination(PlutoGridStateManager stateManager) {
  stateManager.setPageSize(10, notify: false);
  stateManager.setConfiguration(
    const PlutoGridConfiguration(iconColor: Colors.black),
  );
  return PlutoPagination(stateManager);
}

Row buttonsOperationDialog(
  rendererContext, {
  Function? viewFunction,
  Function? editFunction,
  Function? deleteFunction,
  bool? renderedEdit = true,
  bool? renderedView = true,
  bool? renderedDelete = true,
}) {
  return Row(
    children: [
      if (renderedEdit == true)
        Expanded(
          child: IconButton(
            icon: Responsive.web
                ? Row(
                    children: [
                      const Icon(Icons.edit),
                      Text('editar'.tr),
                    ],
                  )
                : const Icon(Icons.edit),
            onPressed: () {
              editFunction!();
            },
            tooltip: 'editar'.tr,
            iconSize: Responsive.sizeIcon,
            color: Colors.blue,
          ),
        ),
      if (renderedView == true)
        Expanded(
          child: IconButton(
            icon: Responsive.web
                ? Row(
                    children: [
                      const Icon(Icons.visibility),
                      Text('ver'.tr),
                    ],
                  )
                : const Icon(Icons.visibility),
            onPressed: () {
              viewFunction!();
            },
            tooltip: 'ver'.tr,
            iconSize: Responsive.sizeIcon,
            color: Colors.green,
          ),
        ),
      if (renderedDelete == true)
        Expanded(
          child: IconButton(
            tooltip: 'eliminar'.tr,
            icon: Responsive.web
                ? Row(
                    children: [
                      const Icon(Icons.cancel_rounded),
                      Text('eliminar'.tr),
                    ],
                  )
                : const Icon(Icons.cancel_rounded),
            onPressed: () {
              deleteFunction!();
            },
            iconSize: Responsive.sizeIcon,
            color: Colors.red,
          ),
        ),
    ],
  );
}
