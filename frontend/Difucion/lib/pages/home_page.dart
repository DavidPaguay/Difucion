import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_difucion/controllers/home_controller.dart';
import 'package:login_difucion/styles/colors.dart';
import 'package:login_difucion/widgets/drawer_widget.dart';

class HomePage extends GetResponsiveView<HomeController> {
  HomePage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          drawer: buildDrawer(),
          appBar: AppBar(
            title: const Text(
              'Inicio',
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
}

