import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:login_difucion/modules/recover_pass/recover_pass_controller.dart';
import 'package:login_difucion/styles/colors.dart';

class RecoverPasswordPage extends GetResponsiveView<RecoverPasswordController> {
  RecoverPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            height: double.infinity,
            width: double.infinity,
            color: blueDifucion,
            padding: EdgeInsets.symmetric(
                horizontal: context.width * 0.06,
                vertical: context.height * 0.1),
            child: context.width < 600
                ? Center(child: buildPhone(controller, context))
                : buildDesktop(controller, context)));
  }

  Widget buildPhone(RecoverPasswordController controller, BuildContext context) {
    return buildForm(controller, context);
  }

  Widget buildDesktop( RecoverPasswordController controller, BuildContext context) {
    return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Expanded(
        child: buildForm(controller, context), 
        flex: 2
      ),
      Expanded(
        child: Image.asset(
          "assets/recover_pass.png",
        ),
        flex: 3,
      ),
    ],
  );
  }

  Widget buildForm(RecoverPasswordController controller, BuildContext context) {
    return Form(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextButton(
                  onPressed: controller.goToLoginPage,
                  child: const Text(
                    '<- Regresa al inicio de sesión',
                    style: TextStyle(
                      color: yellowDifucion,
                      fontSize: 24,
                    ),
                  ),
                ),
              const SizedBox(height: 40),
              const Text(
                "Restablecer contraseña",
                style: TextStyle(
                  color: yellowDifucion,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 25),
              const Text(
                'Correo',
                style: TextStyle(
                  color: yellowDifucion,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 5),
              const Text(
                'Introduce tu correo electronico y te enviaremos un enlace para restablecer tu contraseña.',
                style: TextStyle(
                  color: Color.fromARGB(252, 251, 234, 177),
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 15),
              buildTextField(),
              Container(
              padding: const EdgeInsets.symmetric(vertical: 25),
              width: double.infinity,
              child: ElevatedButton(
                onPressed: controller.recoverPassword,
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xfffcc000),
                  elevation: 5,
                  padding: const EdgeInsets.all(14),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                ),
                child: const Text('Restablecer Contraseña',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                    )),
              ),
            ),
            ],
          ),
        ));
  }

  Widget buildTextField() {
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
      ),
    );
  }
}
