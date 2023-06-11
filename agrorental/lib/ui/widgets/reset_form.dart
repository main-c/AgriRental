import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:agrorental/ui/pages/auth/register.dart';

import 'forget_password_form.dart';

class ResetForm extends StatefulWidget {
  ResetForm({super.key, this.username});

  String? username;
  @override
  State<ResetForm> createState() => _ResetFormState();
}

class _ResetFormState extends State<ResetForm> {
  final _formKey = GlobalKey<FormState>();
  String _password = "";
  String _confirmPassword = "";
  bool showPassword = false;
  bool showConfirmPPassword = false;
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
                          borderRadius: BorderRadius.all(Radius.circular(14))),
                      hintText: "Nouveau mot de passe",
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
                          borderRadius: BorderRadius.all(Radius.circular(14))),
                      hintText: "Confirmez le mot de passe",
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
                                    "En cours...",
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              )
                            : Text("Confirmer",
                                style:
                                    Theme.of(context).textTheme.headlineMedium),
                      )),
                  const SizedBox(
                    height: 50,
                  ),
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
