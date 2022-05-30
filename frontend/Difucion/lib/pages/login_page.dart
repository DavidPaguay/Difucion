import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_difucion/controllers/login_controller.dart';
import 'package:login_difucion/styles/colors.dart';

class LoginPage extends GetResponsiveView<LoginController> {
  LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      init: LoginController(),
      builder: (controller) {
        return Scaffold(
            body: Container(
                height: double.infinity,
                width: double.infinity,
                color: blueDifucion,
                padding: EdgeInsets.symmetric(
                    horizontal: context.width * 0.06,
                    vertical: context.height * 0.1),
                child: context.width < 600
                    ? Center(child: buildPhone(context))
                    : buildDesktop(context)));
      },
    );
  }

  Widget buildForm(LoginController controller, BuildContext context) {
    return Form(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                "Iniciar sesión",
                style: TextStyle(
                  color: yellowDifucion,
                  fontSize: 38,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Correo',
                style: TextStyle(
                  color: yellowDifucion,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 5),
              buildEmailTextField(),
              const SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Expanded(
                    child: Text(
                      'Contraseña',
                      style: TextStyle(
                        color: yellowDifucion,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: controller.goToRecoverPass,
                    child: const Text(
                      'Olvido su contraseña',
                      style: TextStyle(
                          color: lightYellowDifucion,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 5),
              buildPasswordTextFiel(),
              const SizedBox(height: 25),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 25),
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: controller.verifyPassword,
                  style: ElevatedButton.styleFrom(
                    primary: yellowDifucion,
                    elevation: 5,
                    padding: const EdgeInsets.all(14),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                  ),
                  child: const Text('Iniciar sesión',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                      )),
                ),
              ),
              const SizedBox(height: 25),
              GestureDetector(
                onTap: controller.newRegistro,
                child: Center(
                  child: RichText(
                      text: const TextSpan(children: [
                    TextSpan(
                        text: "¿No estas registrado? ",
                        style: TextStyle(
                            color: lightYellowDifucion,
                            fontSize: 16,
                            fontWeight: FontWeight.w500)),
                    TextSpan(
                        text: " registrarme",
                        style: TextStyle(
                          color: yellowDifucion,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        )),
                  ])),
                ),
              ),
            ],
          ),
        ));
  }

  Widget buildEmailTextField() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: TextFormField(
          decoration: InputDecoration(
              
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(
                    color: yellowDifucion,
                  ))),
          cursorColor: yellowDifucion,
          validator: (value) {
            return (value.toString().isEmail)
                ? null
                : 'El correo ingresado no es valido';
          }
      ),
    );
  }

  Widget buildPasswordTextFiel() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: TextFormField(
        obscureText: !controller.visible,
        decoration: InputDecoration(
            suffixIcon: IconButton(
              icon: controller.visible
                  ? const Icon(Icons.visibility)
                  : const Icon(Icons.visibility_off),
              onPressed: controller.changeVisibility,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(
                  color: yellowDifucion,
                ))),
        cursorColor: yellowDifucion,
        onChanged: controller.onPasswordChanged,
      ),
    );
  }

  Widget buildDesktop(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(child: buildForm(controller, context), flex: 2),
        Expanded(
          child: Image.asset(
            "assets/login_desktop.png",
          ),
          flex: 3,
        ),
      ],
    );
  }

  Widget buildPhone(BuildContext context) {
    return buildForm(controller, context);
  }
}
