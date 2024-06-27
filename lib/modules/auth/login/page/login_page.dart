import 'package:e_commerce/env/theme/app_theme.dart';
import 'package:e_commerce/modules/auth/login/service/login_service.dart';
import 'package:e_commerce/shared/widgets/layout_auth.dart';
import 'package:e_commerce/shared/widgets/textformfield_widget.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController userController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool isObscure = false;
  LoguinService loguinService = LoguinService();

  @override
  Widget build(BuildContext context) {
    return LayoutAuth(
      modeAuth: 'Iniciar Sesion',
      linkCuenta: 'Registrate',
      textoCuenta: '¿Aun no tienes cuenta?',
      onPress: () {
        final body = {
          'nombreUsuario': userController.text,
          'contraseña': passwordController.text
        };
        loguinService.login(context, body);
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 120,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 45),
            child: Text(
              'Correo Electrónico',
              style: TextStyle(
                color: AppTheme.primaryColor,
                fontWeight: FontWeight.w700,
                fontSize: 20,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: TextFieldWidget(
                onChanged: (value) {},
                hinText: 'Correo',
                // enabled: true,

                fontColor: Colors.black,
                // isValid: true,
                controller: userController,

                // focusColor: Colors.black,
              )),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 45),
            child: Text(
              'Contraseña',
              style: TextStyle(
                color: AppTheme.primaryColor,
                fontWeight: FontWeight.w700,
                fontSize: 20,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: TextFieldWidget(
              controller: passwordController,
              obscureText: isObscure,
              suffixIcon: IconButton(
                  onPressed: () {
                    isObscure = !isObscure;
                    setState(() {});
                  },
                  icon: Icon((!isObscure)
                      ? Icons.visibility_off_outlined
                      : Icons.remove_red_eye_outlined)),
              onChanged: (value) {},
              hinText: 'Contraseña',
              fontColor: Colors.black,
              isValid: true,

              // focusColor: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
