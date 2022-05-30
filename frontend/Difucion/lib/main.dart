import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_difucion/injections.dart';
import 'package:login_difucion/pages/home_page.dart';
import 'package:login_difucion/pages/initial_page.dart';
import 'package:login_difucion/modules/publications/publications_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Injection.init();
    return GetMaterialApp(
      title: 'Iniciar Sesion',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
