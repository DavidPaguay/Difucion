import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:login_difucion/controllers/register_usuario_controller.dart';

class RegistroUsuarioPage extends GetResponsiveView<RegisterUsuarioController> {
  RegistroUsuarioPage({Key? key}) : super(key: key);
 
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          child: Stack(children: <Widget>[
            Container(
              height: double.infinity,
              width: double.infinity,
              color: const Color(0xff003772),
              child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 60),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    builReturn(controller),
                    const SizedBox(height: 30),
                    const Text(
                      'Nuevo Usuario',
                      style: TextStyle(
                        color: Color(0xfffcc000),
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 25),
                    buildCampo('Nombres'),
                    const SizedBox(height: 25),
                    buildCampo('Apellidos'),
                    const SizedBox(height: 25),
                    buildCampo('Correo electronico'),
                    const SizedBox(height: 25),
                    buildCampo('Contraseña'),
                  ],
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}

Widget builReturn(RegisterUsuarioController controller) {
  return GestureDetector(
    onTap: controller.goToLoginPage,
    child: RichText(
      text: const TextSpan(
        text: '<--- Regresa al inicio de sesión',
        style: TextStyle(
          color: Color(0xfffcc000),
          fontSize: 16,
          fontWeight: FontWeight.w500,
        )
      ),
    ),
  );
}
Widget buildCampo(String campo) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
       Text(
        campo,
        style: const TextStyle(
            color: Color(0xfffcc000),
            fontSize: 16,
            fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 10),
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [
              BoxShadow(
                  color: Colors.black, blurRadius: 6, offset: Offset(0, 2)),
            ]),
        height: 50,
        child: const TextField(
          keyboardType: TextInputType.emailAddress,
          style: TextStyle(
            color: Colors.black,
            fontSize: 20
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(top: 5),
            
          ),
          textAlign: TextAlign.center,
        ),
      )
    ],
  );
}