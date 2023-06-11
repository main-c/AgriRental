import 'package:flutter/material.dart';
import '../../widgets/auth_base_page.dart';
import '../../widgets/register_form.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  GlobalKey _formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AuthBasePage(
          title: "S'inscrire",
          subtile:
              "Créez votre compte pour accéder à notre service de location",
          form: const RegisterForm(),
          buttonTitle: "Creer un compte"),
    );
  }
}
