import 'package:flutter/material.dart';

class Styles {
  static HexColor colorPrincipal = HexColor("#ffbf00");
  static Color? colorSecundario = Colors.green[300];
  static Color? colorTercero = Colors.white;
  static Color? colorCuarto = Colors.yellow[300];
  static Color? colorQuinto = Colors.amber;
  static Color? colorSexto = Colors.grey[350];
  static Color? colorBottonGuardar = Colors.blue[900];
  static Color? colorBottonCancelar = Colors.red[900];
}

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) hexColor = "FF" + hexColor;
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}

extension ColorConversion on Color {
  MaterialColor toMaterialColor() {
    final List strengths = <double>[.05];
    final Map<int, Color> swatch = {};
    final r = red, g = green, b = blue;
    for (var i = 1; i < 10; i++) {
      strengths.add(0.1 * i);
    }
    for (final strength in strengths) {
      final ds = 0.5 - strength;
      swatch[(strength * 1000).round()] = Color.fromRGBO(
        r + ((ds < 0 ? r : (255 - r)) * ds).round(),
        g + ((ds < 0 ? g : (255 - g)) * ds).round(),
        b + ((ds < 0 ? b : (255 - b)) * ds).round(),
        1,
      );
    }
    return MaterialColor(value, swatch);
  }
}

ButtonStyle getStyle() => ElevatedButton.styleFrom(
      primary: Styles.colorPrincipal,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(25),
          topLeft: Radius.circular(25),
        ),
      ),
    );
