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
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: AuthBasePage(
          title: "Se connecter",
          subtile: "Gérez vos réservations et vos équipements agricoles",
          form: LoginForm(),
          buttonTitle: "Creer un compte"),
    );
  }
}
