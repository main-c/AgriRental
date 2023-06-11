import 'package:flutter/material.dart';
import '../../widgets/auth_base_page.dart';
import '../../widgets/login_form.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  GlobalKey _formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AuthBasePage(
          title: "Se connecter",
          subtile:
              "Gérez vos réservations et vos équipements agricoles",
          form: LoginForm(),
          buttonTitle: "Creer un compte"),
    );
  }
}
