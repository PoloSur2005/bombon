import 'package:bombon_crochet/screens/login/login_menu.dart';
import 'package:bombon_crochet/screens/login/signin_screen.dart';
import 'package:bombon_crochet/widgets/bombon_chrochet_logo.dart';
import 'package:bombon_crochet/widgets/generic_button.dart';
import 'package:bombon_crochet/widgets/generic_text_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 600, vertical: 200),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const BombonChrochetLogo(),
          const TitleBombonChrochet(),
          const LogInButton(),
          GenericTextButton(
              text: 'Nueva cuenta',
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const SignIn())))
        ],
      ),
    );
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

class TitleBombonChrochet extends StatelessWidget {
  const TitleBombonChrochet({
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
