import 'package:bombon_crochet/screens/catalogo/home_screen.dart';
import 'package:bombon_crochet/widgets/generic_button.dart';
import 'package:bombon_crochet/widgets/generic_textfield.dart';
import 'package:bombon_crochet/screens/login/widgets/service_login_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'widgets/password_textfield.dart';

Future<dynamic> loginMenu(BuildContext context) {
  return showModalBottomSheet(
      context: context,
      backgroundColor: const Color.fromRGBO(243, 243, 250, 1),
      constraints: const BoxConstraints(maxWidth: 1500),
      builder: (context) => Padding(
            padding: const EdgeInsets.only(bottom: 150),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 1400),
                  child: IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: const Icon(Icons.close)),
                ),
                Text('Iniciar sesión',
                    style: GoogleFonts.rowdies(
                        fontSize: 50, fontWeight: FontWeight.w200)),
                const Menu()
              ],
            ),
          ));
}

class Menu extends StatelessWidget {
  const Menu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const MailLogin(),
          const SizedBox(width: 20),
          Container(
            width: 1,
            height: 200,
            color: const Color.fromRGBO(196, 198, 207, 1),
          ),
          const SizedBox(width: 20),
          const ServicesLogin(),
        ],
      ),
    );
  }
}

class ServicesLogin extends StatelessWidget {
  const ServicesLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ServiceLoginButton(
          image: 'images/logo_services/google.png',
          text: 'Iniciar sesión con Google',
        ),
        SizedBox(
          height: 15,
        ),
        ServiceLoginButton(
          image: 'images/logo_services/facebook.png',
          text: 'Continuar con Facebook',
        ),
      ],
    );
  }
}

class MailLogin extends StatelessWidget {
  const MailLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double size = 20;
    return Column(
      children: [
        const GenericTextField(
            labelText: 'Correo electronico', icon: Icons.alternate_email),
        SizedBox(
          height: size,
        ),
        const PasswordTextfield(labelText: 'Contraseña', icon: Icons.password),
        SizedBox(
          height: size,
        ),
        GenericButton(
          icon: Icons.login,
          text: 'Iniciar sesión',
          onPressed: () => Navigator.push(context,
              MaterialPageRoute(builder: (context) => const HomeScreen())),
          width: 170,
        )
      ],
    );
  }
}
