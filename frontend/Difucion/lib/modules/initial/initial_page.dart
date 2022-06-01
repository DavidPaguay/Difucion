import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_difucion/modules/initial/initial_controller.dart';

class InitialPage extends GetResponsiveView<InitialController> {
  InitialPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return GetBuilder(
        init: InitialController(),
        builder: (controlador) => const Scaffold(
                body: Center(
              child: CircularProgressIndicator(),
            )));
  }
}
