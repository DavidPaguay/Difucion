import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_difucion/utils/responsive_grid.dart';
import 'package:login_difucion/utils/styles.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

var alertStyle = AlertStyle(
  animationType: AnimationType.fromTop,
  isCloseButton: true,
  isOverlayTapDismiss: true,
  descStyle: const TextStyle(fontWeight: FontWeight.bold),
  descTextAlign: TextAlign.start,
  animationDuration: const Duration(milliseconds: 400),
  alertBorder: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(20.0),
    side: const BorderSide(
      color: Colors.grey,
    ),
  ),
  alertAlignment: Alignment.topCenter,
  overlayColor: const Color.fromRGBO(38, 38, 38, 0.4),
);

openPopup(context, titulo, Widget formulario,
    {Function? aceptar,
    Function? cancelar,
    AlertType type = AlertType.create}) {
  Alert(
      context: context,
      style: alertStyle,
      title: titulo,
      content: formulario,
      buttons: [
        if (type != AlertType.read)
          DialogButton(
              width: 200,
              onPressed: () => aceptar!(),
              child: RichText(
                text: TextSpan(
                  children: [
                    WidgetSpan(
                      child: Icon(
                        type == AlertType.create ? Icons.save : Icons.check,
                        size: Responsive.sizeIcon,
                      ),
                    ),
                    TextSpan(
                        text: type == AlertType.create
                            ? "guardar".tr
                            : "aceptar".tr,
                        style: TextStyle(
                            color: Styles.colorBottonGuardar,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
              )),
        DialogButton(
          width: 200,
          onPressed: () {
            if (cancelar != null) cancelar();
            Navigator.pop(context);
          },
          child: RichText(
            text: TextSpan(
              children: [
                WidgetSpan(
                  child: Icon(Icons.cancel, size: Responsive.sizeIcon),
                ),
                TextSpan(
                    text: type == AlertType.read ? "cerrar".tr : "cancelar".tr,
                    style: TextStyle(
                        color: Styles.colorBottonCancelar,
                        fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        ),
      ]).show();
}

openPopupDelete({Function? eliminar}) {
  openPopup(Get.context, "eliminar".tr, Text("eliminarCuerpo".tr),
      type: AlertType.delete, aceptar: eliminar);
}

openToastMensage({ToastType type = ToastType.sucess, String mensaje = ""}) {
  switch (type) {
    case ToastType.error:
      mensaje = mensaje.isEmpty ? "error".tr : mensaje;
      MotionToast.error(description: Text(mensaje)).show(Get.context!);
      break;
    case ToastType.warning:
      mensaje = mensaje.isEmpty ? "exito".tr : mensaje;
      MotionToast.warning(description: Text(mensaje)).show(Get.context!);
      break;
    default:
      mensaje = mensaje.isEmpty ? "exito".tr : mensaje;
      MotionToast.success(description: Text(mensaje)).show(Get.context!);
      break;
  }
}

enum AlertType { create, update, read, delete }

enum ToastType { sucess, warning, error }
