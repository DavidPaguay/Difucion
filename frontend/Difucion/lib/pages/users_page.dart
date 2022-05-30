

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:login_difucion/controllers/users_controller.dart';
import 'package:login_difucion/styles/colors.dart';
import 'package:login_difucion/widgets/drawer_widget.dart';

class UsersPage extends GetResponsiveView<UsersController> {
  UsersPage({Key? key}) : super(key: key);
 
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