import 'package:agrorental/ui/pages/auth/login.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:agrorental/ui/pages/Accueil.dart';
// import 'package:mobile/ui/pages/auth/register.dart';

// import '../pages/auth/forget_password.dart';
import '../pages/HomePage2.dart';
import '../pages/auth/register.dart';
import 'forget_password_form.dart';

class LoginForm extends StatefulWidget {
  LoginForm({super.key, this.username});

  String? username;
  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  String _email = "";
  String _password = "";
  String _username = "";
  bool showPassword = false;
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Expanded(
          child: Form(
              key: _formKey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextFormField(
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 16),
                    initialValue: widget.username ?? "",
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Theme.of(context).colorScheme.onSecondary,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14),
                        borderSide:
                            const BorderSide(width: 1, color: Colors.white),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                      focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.all(Radius.circular(14))),
                      hintText: "Nom d'utilisateur",
                      hintStyle: Theme.of(context)
                          .textTheme
                          .bodySmall
                          ?.copyWith(color: Colors.grey, fontSize: 16),
                    ),
                    onChanged: (value) => setState(() {
                      _username = value;
                    }),
                    onSaved: (newValue) {
                      setState(() {
                        _username = newValue!;
                      });
                    },
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Veuillez entrer votre nom d'utilisateur";
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 16),
                    obscureText: true,
                    decoration: InputDecoration(
                      suffixIcon: const Icon(Icons.visibility_off),
                      filled: true,
                      fillColor: Theme.of(context).colorScheme.onSecondary,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14),
                        borderSide:
                            const BorderSide(width: 1, color: Colors.white),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                      focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.all(Radius.circular(14))),
                      hintText: "Mot de passe",
                      hintStyle: Theme.of(context)
                          .textTheme
                          .bodySmall
                          ?.copyWith(color: Colors.grey, fontSize: 16),
                    ),
                    onChanged: (value) => setState(() {
                      _password = value;
                    }),
                    onSaved: (newValue) {
                      setState(() {
                        _password = newValue!;
                      });
                    },
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Veuillez entrer votre mot de passe";
                      }
                      return null;
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LoginPage()));
                        },
                        child: Text(
                          "Mot de passe oublié ?",
                          textAlign: TextAlign.end,
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall
                              ?.copyWith(
                                  color:
                                      Theme.of(context).colorScheme.secondary,
                                  fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                  Container(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          login();
                        },
                        child: isLoading
                            ? Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  SizedBox(
                                    height: 20,
                                    width: 20,
                                    child: CircularProgressIndicator(
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "En cours de connexion...",
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              )
                            : Text("Connexion",
                                style:
                                    Theme.of(context).textTheme.headlineMedium),
                      )),
                  const SizedBox(
                    height: 10,
                  ),
                  RichText(
                    text: TextSpan(
                        text: "Vous n'avez pas de compte ? ",
                        style: Theme.of(context).textTheme.bodySmall,
                        children: [
                          TextSpan(
                            text: "S'inscrire",
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall
                                ?.copyWith(
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                    fontWeight: FontWeight.w700),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute<void>(
                                    builder: (BuildContext context) =>
                                        const RegisterPage(),
                                  ),
                                );
                              },
                          ),
                        ]),
                  )
                ],
              )),
        )
      ]),
    );
  }

  void login() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();

      if (isLoading) {
        return;
      }
      setState(() {
        isLoading = true;


        Navigator.push(context,
            MaterialPageRoute(builder: (BuildContext context) {
              return Accueil(title: "title");
            }));
      });

      // Request.auth_service.login(_username, _password).then((value) {
      //   setState(() {
      //     isLoading = false;
      //   });

      //   if (value != null) {
      //     Navigator.push(
      //         context, MaterialPageRoute(builder: (context) => HomeScreen()));
      //   } else {
      //     ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      //       content: Text(Request.auth_service.last_errors),
      //       backgroundColor: Colors.red,
      //     ));
      //   }
      // });
    }
  }
}
