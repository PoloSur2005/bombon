import 'package:bombon_crochet/screens/catalogo/home_screen.dart';
import 'package:bombon_crochet/widgets/bombon_chrochet_logo.dart';
import 'package:bombon_crochet/widgets/generic_button.dart';
import 'package:bombon_crochet/widgets/generic_text_button.dart';
import 'package:bombon_crochet/widgets/generic_textfield.dart';
import 'package:bombon_crochet/screens/login/widgets/service_login_button.dart';
import 'package:flutter/material.dart';

import 'widgets/password_textfield.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 600, vertical: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const BombonChrochetLogo(width: 200, height: 200),
            const Text('Nueva cuenta',
                style: TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(63, 95, 144, 1))),
            const GenericTextField(icon: Icons.person, labelText: 'Nombre'),
            const GenericTextField(
                icon: Icons.alternate_email, labelText: 'Correo electrónico'),
            //TODO: Crear un widget para el campo de contraseña
            const PasswordTextfield(
                icon: Icons.password, labelText: 'Contraseña'),
            const PasswordTextfield(
              icon: Icons.password,
              labelText: 'Confirmar contraseña',
            ),
            GenericButton(
                icon: Icons.person_add_outlined,
                width: 170,
                text: 'Crear cuenta',
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomeScreen()))),
            GenericTextButton(
                text: 'Iniciar sesión',
                onPressed: () => Navigator.pop(context)),
            Container(
              width: 400,
              height: 1,
              color: const Color.fromRGBO(196, 198, 207, 1),
            ),
            const ServiceLoginButton(
                text: 'Registrarse con Google',
                image: 'images/logo_services/google.png'),
            const ServiceLoginButton(
                text: 'Continuar con Facebook',
                image: 'images/logo_services/facebook.png')
          ],
        ),
      ),
    ));
  }
}
