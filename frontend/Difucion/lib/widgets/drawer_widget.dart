import 'package:flutter/material.dart';
import 'package:login_difucion/modules/home/home_controller.dart';
import 'package:login_difucion/styles/colors.dart';

HomeController controller = HomeController();

Widget buildDrawer() {
  return Drawer(
    child: Material(
      color: Colors.white,
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: <Widget>[
          const SizedBox(height: 48, width: 20),
          SizedBox(
            width: 80,
            height: 80,
            child: Image.asset('assets/logo_difucion.png'),
          ),
          const SizedBox(height: 20, width: 20),
          const Text('Main'),
          const Divider(color: Colors.black),
          const ListTile(
              leading: Icon(Icons.dashboard, color: Colors.black),
              title: Text('Dashboard', style: TextStyle(color: Colors.black)),
              hoverColor: yellowDifucion),
          const Text('Administración'),
          const Divider(color: Colors.black),
          ListTile(
            leading: const Icon(Icons.supervised_user_circle_sharp,
                color: Colors.black),
            title:
                const Text('Usuarios', style: TextStyle(color: Colors.black)),
            hoverColor: yellowDifucion,
            onTap: controller.goToUsers
          ),
          const Text('Red social'),
          const Divider(color: Colors.black),
          const ListTile(
              leading:
                  Icon(Icons.supervised_user_circle_sharp, color: Colors.black),
              title: Text('Tipo de red', style: TextStyle(color: Colors.black)),
              hoverColor: yellowDifucion),
          const ListTile(
              leading: Icon(Icons.wechat_outlined, color: Colors.black),
              title: Text('Usuarios en red',
                  style: TextStyle(color: Colors.black)),
              hoverColor: yellowDifucion),
          const Text('Publicaciones'),
          const Divider(color: Colors.black),
          ListTile(
              leading: const Icon(Icons.list, color: Colors.black),
              title: const Text('Lista', style: TextStyle(color: Colors.black)),
              hoverColor: yellowDifucion,
              onTap: controller.goToPublications),
          const ListTile(
              leading: Icon(Icons.emoji_emotions, color: Colors.black),
              title: Text('Reacciones', style: TextStyle(color: Colors.black)),
              hoverColor: yellowDifucion),
        ],
      ),
    ),
  );
}
