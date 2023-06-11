import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../pages/auth/register.dart';

class ForgetPassForm extends StatefulWidget {
  ForgetPassForm({super.key, this.username});

  String? username;
  @override
  State<ForgetPassForm> createState() => _ForgetPassFormState();
}

class _ForgetPassFormState extends State<ForgetPassForm> {
  final _formKey = GlobalKey<FormState>();
  String _value = "";
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
                      hintText: "Nom d'utilisateur/ Email/ Telephone",
                      hintStyle: Theme.of(context)
                          .textTheme
                          .bodySmall
                          ?.copyWith(color: Colors.grey, fontSize: 16),
                    ),
                    onChanged: (value) => setState(() {
                      _value = value;
                    }),
                    onSaved: (newValue) {
                      setState(() {
                        _value = newValue!;
                      });
                    },
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Veuillez completer ce champ";
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
                                    "En cours ...",
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              )
                            : Text("Continuer",
                                style:
                                    Theme.of(context).textTheme.headlineMedium),
                      )),
                  const SizedBox(
                    height: 10,
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
