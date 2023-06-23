import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:agrorental/ui/pages/auth/login.dart';
import 'package:agrorental/ui/theme/theme.dart';
import 'package:agrorental/ui/pages/Accueil.dart';

import '../pages/HomePage2.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final _formKey = GlobalKey<FormState>();
  String _name = "";
  String _password = "";
  String _first_name = "";
  String _confirmPassword = "";
  bool showPassword = false;
  bool _isChecked = true;
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Form(
                key: _formKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextFormField(
                        cursorColor: Theme.of(context).colorScheme.primary,
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 16),
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
                              borderRadius:
                                  BorderRadius.all(Radius.circular(14))),
                          hintText: "Nom",
                          hintStyle: Theme.of(context)
                              .textTheme
                              .bodySmall
                              ?.copyWith(fontSize: 16, color: Colors.grey),
                        ),
                        keyboardType: TextInputType.text,
                        onSaved: (newValue) {
                          setState(() {
                            _name = newValue!;
                          });
                        },
                        onChanged: ((value) => {
                              setState(() {
                                _name = value;
                              })
                            }),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Veuillez entrer votre nom ";
                          }
                          // if (_email.isNotEmpty && !emailRegex.hasMatch(_email)) {
                          //   return "Please enter a valid email";
                          // }
                          return null;
                        },
                      ),
                      TextFormField(
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 16),
                        cursorColor: Theme.of(context).colorScheme.primary,
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
                              borderRadius:
                                  BorderRadius.all(Radius.circular(14))),
                          hintText: "Prenom",
                          hintStyle: Theme.of(context)
                              .textTheme
                              .bodySmall
                              ?.copyWith(color: Colors.grey, fontSize: 16),
                        ),
                        keyboardType: TextInputType.text,
                        onSaved: (newValue) {
                          setState(() {
                            _first_name = newValue!;
                          });
                        },
                        onChanged: ((value) => {
                              setState(() {
                                _first_name = value;
                              })
                            }),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Veuillez entrer votre prenom";
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 16),
                        cursorColor: Theme.of(context).colorScheme.primary,
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
                              borderRadius:
                                  BorderRadius.all(Radius.circular(14))),
                          hintText: "Numero de telephone",
                          hintStyle: Theme.of(context)
                              .textTheme
                              .bodySmall
                              ?.copyWith(color: Colors.grey, fontSize: 16),
                        ),
                        keyboardType: TextInputType.phone,
                        onSaved: (newValue) {
                          setState(() {
                            _first_name = newValue!;
                          });
                        },
                        onChanged: ((value) => {
                              setState(() {
                                _first_name = value;
                              })
                            }),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Veuillez entrer votre numero de telephone";
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 16),
                        cursorColor: Theme.of(context).colorScheme.primary,
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
                              borderRadius:
                                  BorderRadius.all(Radius.circular(14))),
                          hintText: "Mot de passe",
                          hintStyle: Theme.of(context)
                              .textTheme
                              .bodySmall
                              ?.copyWith(color: Colors.grey, fontSize: 16),
                        ),
                        keyboardType: TextInputType.visiblePassword,
                        onSaved: (newValue) {
                          setState(() {
                            _password = newValue!;
                          });
                        },
                        onChanged: ((value) => {
                              setState(() {
                                _password = value;
                              })
                            }),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Veuillez renseigner le mot de passe";
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 16),
                        cursorColor: Theme.of(context).colorScheme.primary,
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
                              borderRadius:
                                  BorderRadius.all(Radius.circular(14))),
                          hintText: "Confirmer le mot de passe",
                          hintStyle: Theme.of(context)
                              .textTheme
                              .bodySmall
                              ?.copyWith(color: Colors.grey, fontSize: 16),
                        ),
                        keyboardType: TextInputType.visiblePassword,
                        onSaved: (newValue) {
                          setState(() {
                            _confirmPassword = newValue!;
                          });
                        },
                        onChanged: ((value) => {
                              setState(() {
                                _confirmPassword = value;
                              })
                            }),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Veuillez confirner le mot de passe";
                          }
                          if (_confirmPassword != _password) {
                            return "le mot de passe ne correspond pas";
                          }
                          return null;
                        },
                      ),
                      FormField<bool>(
                        builder: (FormFieldState<bool> state) {
                          return Row(
                            children: [
                              Checkbox(
                                activeColor:
                                    Theme.of(context).colorScheme.primary,
                                value: _isChecked,
                                onChanged: (bool? value) {
                                  setState(() {
                                    _isChecked = value!;
                                  });
                                },
                              ),
                              RichText(
                                  text: TextSpan(
                                      text: "J'ai lu et j'accepte les ",
                                      style:
                                          Theme.of(context).textTheme.bodySmall,
                                      children: [
                                    TextSpan(
                                      text: "Conditions d'utilisation",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall
                                          ?.copyWith(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .primary,
                                              fontWeight: FontWeight.w700),
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {
                                          //  Navigator.pushNamed(context, '/terms');
                                        },
                                    ),
                                    TextSpan(
                                        text: ".",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall),
                                  ])),
                            ],
                          );
                        },
                        validator: (value) {
                          if (_isChecked == false) {
                            return "Veuillez accepter les conditions";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Flexible(
                        child: SizedBox(
                          width: double.infinity,
                          height: 50,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  Theme.of(context).colorScheme.primary,
                            ),
                            onPressed: () {
                              register();
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
                                        "En cours...",
                                        style: TextStyle(color: Colors.white),
                                      )
                                    ],
                                  )
                                : Text("Créer un compte",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineMedium),
                          ),
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                            text: "Vous avez déjà un compte ? ",
                            style: Theme.of(context).textTheme.bodySmall,
                            children: [
                              TextSpan(
                                text: "Se connecter",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.copyWith(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                        fontWeight: FontWeight.w700),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute<void>(
                                        builder: (BuildContext context) =>
                                            const LoginPage(),
                                      ),
                                    );
                                  },
                              ),
                            ]),
                      )
                    ])),
          ),
        ],
      ),
    );
  }

  void register() {
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

      //   Request.auth_service
      //       .register(_email, _username, _password, _confirmPassword)
      //       .then((value) {
      //     setState(() {
      //       isLoading = false;
      //     });
      //     if (value == true) {
      //       Navigator.push(
      //           context,
      //           MaterialPageRoute(
      //               builder: (context) => LoginPage(username: _username)));
      //     } else {
      //       ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      //         content: Text(Request.auth_service.last_errors),
      //         backgroundColor: Colors.red,
      //       ));
      //     }
      //   });
      // }
    }
  }

  Widget get_snackbar_content(Map<String, dynamic> errors) {
    List<String> rows = [];

    for (List<dynamic> errs in errors.values) {
      for (String err in errs) {
        rows.add(err);
      }
    }

    return Text(
      rows.join("\n"),
    );
  }
}
