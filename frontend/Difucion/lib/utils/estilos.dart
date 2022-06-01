import 'package:flutter/material.dart';

/* MAIN */
get primarySwatchColor => colorPrincipal();

Color colorPrincipal(){
  return Colors.blue;
}

get testColor1 => HexColor("#ffbf00");

/*
  PAGES
*/


/* HOME */

get backgroundColorHome => HexColor("#ffbf00");
get colorPrincipalHome => HexColor("#ffbf00");

get colorSecundarioHome => colorS_1();

get colorSecundarioEstadoVHome1 => colorEVS1_1();
get colorSecundarioEstadoVHome2 => colorEVS2_1();

get colorTerceroHome => colorT_1();
get colorCuartoHome => colorC_1();
get colorQuintoHome => HexColor("#ffbf00");
get colorSextoHome => colorSt_1();

Color? backgroundColorH_1(){
  return Colors.green[300];
}
Color? colorP_1(){
  return Colors.green[300];
}
Color? colorS_1(){
  return Colors.white;
}

Color? colorEVS1_1(){
  return Colors.green[800];
}
Color? colorEVS2_1(){
  return Colors.red[800];
}

Color? colorT_1(){
  return Colors.yellow[300];
}
Color? colorC_1(){
  return Colors.grey[400];
}
Color? colorQ_1(){
  return Colors.green;
}
Color? colorSt_1(){
  return Colors.grey[350];
}


/* INICIO */

get colorPrincipalInicio => Colors.yellow[50];
get colorBarraInicio => HexColor("#ffbf00");
get colorSecundarioInicio => colorS_2();
get colorTerceroInicio => colorT_2();
get colorCuartoInicio => colorC_2();

Color? colorP_2(){
  return Colors.green[300];
}
Color colorS_2(){
  return Colors.black;
}
Color colorT_2(){
  return Colors.black;
}
Color colorC_2(){
  return Colors.white;
}




/* PAGOS */

get backgroundColorPagos => HexColor("#ffbf00");
get colorPrincipalPagos => HexColor("#ffbf00");
get colorSecundarioPagos => colorS_3();
get colorTerceroPagos => colorT_3();
get colorCuartoPagos => colorC_3();
get colorQuintoPagos => colorQ_3();

Color? backgroundColorPagos_3(){
  return Colors.green[300];
}
Color? colorP_3(){
  return Colors.green[300];
}
Color? colorS_3(){
  return Colors.grey;
}
Color? colorT_3(){
  return Colors.red;
}
Color? colorC_3(){
  return Colors.white;
}
Color? colorQ_3(){
  return Colors.red;
}



/* REPORTES */
get backgroundColorReportes => HexColor("#ffbf00");

Color? backgroundColorR_4(){
  return Colors.green[300];
}


/* SUGERENCIAS */
get backgroundSugerencias1 => HexColor("#ffbf00");
get colorPrincipalSugerencias => HexColor("#ffbf00");
get colorSecundarioSugerencias => colorS_5();
get colorTerceroSugerencias => colorT_5();
get colorCuartoSugerencias => colorC_5();
get colorQuintoSugerencias => colorQ_5();



Color? backgroundColorSg_5(){
  return Colors.green[300];
}
Color? colorP_5(){
  return Colors.green[300];
}
Color colorS_5(){
  return Colors.black;
}
Color colorT_5(){
  return Colors.amber;
}
Color? colorC_5(){
  return Colors.red;
}
Color? colorQ_5(){
  return Colors.white;
}


/* USUARIO */

get backgroundUsuario => HexColor("#ffbf00");
get colorPrincipalUsuario => HexColor("#ffbf00");
get colorSecundarioUsuario => colorS_6();
get colorTerceroUsuario => colorT_6();

Color? backgroundColorUser_6(){
  return Colors.green[300];
}
Color? colorP_6(){
  return Colors.green[300];
}
Color colorS_6(){
  return Colors.white;
}
Color colorT_6(){
  return Colors.black;
}


/* VEHICULO */

get backgroundVehiculo => HexColor("#ffbf00");
get colorPrincipalVehiculo => HexColor("#ffbf00");
get colorSecundarioVehiculo => colorS_7();
get colorTerceroVehiculo => colorT_7();
get colorCuartoVehiculo => colorC_7();
get colorQuintoVehiculo => colorQ_7();


Color? backgroundColorVehiculo_7(){
  return Colors.green[300];
}
Color? colorP_7(){
  return Colors.green[300];
}
Color colorS_7(){
  return Colors.white;
}
Color colorT_7(){
  return Colors.white;
}
Color? colorC_7(){
  return Colors.black;
}
Color? colorQ_7(){
  return Colors.red;
}







/*
  WIDGETS
*/

/* MAPAS */
get circularProgressIndicatorMapa1 => HexColor("#ffbf00");

Color? circularProgressIndicatorM_1(){
  return Colors.green[300];
}



/* MENU */
get colorTextoMenu1 => colorTextoMn_1();

Color colorTextoMn_1(){
  return Colors.white;
}

get boxDecorationMenu1 => HexColor("#ffbf00");

Color? boxDecorationMn_1(){
  return Colors.green[300];
}



class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}



