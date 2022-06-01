import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'package:taxisbot/app/utils/alert_config.dart';

class Responsive {
  static final web = (MediaQuery.of(Get.context!).size.width > 700);
  static final lg = (MediaQuery.of(Get.context!).size.width < 500) ? 12 : 6;
  static final sizeIcon =
      (MediaQuery.of(Get.context!).size.width < 500) ? 18.0 : 23.0;
  static final eddgeButtons =
      (MediaQuery.of(Get.context!).size.width < 500) ? 5.0 : 15.0;

  static ResponsiveGridCol responsiveGridCustom(
      {required String label,
      Function? validate,
      Function? change,
      TextInputType? type,
      Icon? icon,
      AlertType? tipo = AlertType.create,
      bool? visible,
      Widget? suffixIcon,
      required inicial}) {
    return ResponsiveGridCol(
      lg: lg,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: TextFormField(
          obscureText: visible ?? false,
          readOnly: tipo == AlertType.read,
          initialValue: inicial,
          keyboardType: type ?? TextInputType.text,
          decoration: InputDecoration(
            labelText: label,
            icon: icon,
            suffixIcon: suffixIcon,
          ),
          onChanged: (newValue) => change!(newValue),
          validator: (value) {
            if (value!.isEmpty) {
              return 'vacioCampo'.tr + label;
            } else if (validate != null) {
              return validate(value);
            }
            return null;
          },
        ),
      ),
    );
  }
}
