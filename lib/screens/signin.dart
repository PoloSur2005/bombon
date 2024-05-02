import 'package:bombon_crochet/widgets/bombon_chrochet_logo.dart';
import 'package:bombon_crochet/widgets/generic_button.dart';
import 'package:bombon_crochet/widgets/generic_textfield.dart';
import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 600, vertical: 130),
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
            const GenericTextField(
                icon: Icons.password, labelText: 'Contraseña'),
            const GenericTextField(
              icon: Icons.password,
              labelText: 'Confirmar contraseña',
            ),
            GenericButton(
                icon: Icons.person_add_outlined,
                width: 170,
                text: 'Crear cuenta',
                onPressed: () => () {})
          ],
        ),
      ),
    ));
  }
}
