import 'package:bombon_crochet/screens/login_menu.dart';
import 'package:bombon_crochet/screens/signin.dart';
import 'package:bombon_crochet/widgets/bombon_chrochet_logo.dart';
import 'package:bombon_crochet/widgets/generic_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 600, vertical: 200),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BombonChrochetLogo(),
          TitleText(),
          LogInButton(),
          SignInButton()
        ],
      ),
    );
  }
}

class SignInButton extends StatelessWidget {
  const SignInButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => const SignIn()));
        },
        child: Text(
          'Nueva cuenta',
          style: GoogleFonts.merriweatherSans(),
        ));
  }
}

class LogInButton extends StatelessWidget {
  const LogInButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 270),
        child: GenericButton(
          icon: Icons.login,
          text: 'Iniciar Sesión',
          onPressed: () => loginMenu(context),
        ));
  }
}

class TitleText extends StatelessWidget {
  const TitleText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text('Bombón Crochet',
        style: GoogleFonts.rowdies(
            fontWeight: FontWeight.w200,
            fontSize: 50,
            color: const Color.fromARGB(255, 63, 95, 144)));
  }
}
