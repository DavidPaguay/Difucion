import 'package:get/get.dart';

class LocaleString extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'es_EC': {
          'guardar': 'Guardar',
          'cancelar': 'Cancelar',
          'cerrar': 'Cerrar',
          'aceptar': 'Aceptar',
          'error': 'Por favor vuelva a intentarlo más tarde',
          'exito': 'Operación realizado con exito',
          'eliminar': 'Eliminar',
          'eliminarCuerpo': '¿Esta seguro de eliminar el registro?',
          'vacioCampo': 'Esta vacio el campo ',
          'vacio': 'No existen datos',
          'accion': 'Acción',
          'crear': 'Crear',
          'editar': 'Editar',
          'ver': 'Ver',
          'vehiculo': 'Vehiculo',
          'seguimientoVehiculo': 'Datos del Conductor y Vehiculo'
        },
        'en_US': {
          'guardar': 'Save',
          'cancelar': 'Cancel',
          'cerrar': 'Close',
          'aceptar': 'Acept',
        }
      };
}
