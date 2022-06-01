import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_difucion/modules/users/users_controller.dart';
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
              'Usuarios',
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
          body: Container(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
            margin: const EdgeInsets.all(10),
            color: Colors.white,
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    openDialog(context);
                  },
                  style: ElevatedButton.styleFrom(
                    primary: yellowDifucion,
                    elevation: 5,
                    padding: const EdgeInsets.all(14),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                  ),
                  child: const Text('Nuevo',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                      )),
                ),
                const Divider(),
              ],
            ),
          ),
          backgroundColor: blueDifucion,
        ));
  }

  Future openDialog(BuildContext context) => showDialog(
      context: context,
      builder: (context) {
        return Center(
          child: Card(
            child: InkWell(
              splashColor: Colors.blue.withAlpha(30),
              onTap: () {
                debugPrint('Card tapped.');
              },
              child:  SizedBox(
                width: context.width * 0.5,
                height: context.height * 0.7,
                child: const Text('Crear un nuevo usuario'),
              ),
            ),
          ),
        );
      });
}
