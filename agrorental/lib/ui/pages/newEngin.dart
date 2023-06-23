import 'package:agrorental/ui/pages/HomePage.dart';
import 'package:flutter/material.dart';

class CreateEngin extends StatefulWidget {
  const CreateEngin({Key? key}) : super(key: key);

  @override
  _CreateEnginState createState() => _CreateEnginState();
}

class _CreateEnginState extends State<CreateEngin> {
  final _formKey = GlobalKey<FormState>();
  String _name = "";
  String _price = "";
  String _description = "";
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Ajouter un engin',
          style: Theme.of(context).textTheme.headlineLarge,
        ),
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
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context)
              .size
              .height, // Set a specific height or adjust as needed
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                  child: InkWell(
                onTap: () {},
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.onSecondary),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.upload_file,
                        size: 50,
                      ),
                      Text(
                        "Photo de l'engin",
                        style: Theme.of(context).textTheme.headlineLarge,
                      )
                    ],
                  ),
                ),
              )),
              Expanded(
                child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          "Nom",
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge
                              ?.copyWith(
                                  color: Colors.grey,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor:
                                Theme.of(context).colorScheme.onSecondary,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(14),
                              borderSide: const BorderSide(
                                  width: 1, color: Colors.white),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(14),
                            ),
                            focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(14))),
                            hintText: "Nom de l'engin",
                            hintStyle: Theme.of(context)
                                .textTheme
                                .bodySmall
                                ?.copyWith(color: Colors.grey, fontSize: 16),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Veuillez entrez le nom de l'engin";
                            }
                            return null;
                          },
                        ),
                        Text(
                          "Prix",
                          style:
                              Theme.of(context).textTheme.bodyLarge?.copyWith(
                                    color: Colors.grey,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor:
                                Theme.of(context).colorScheme.onSecondary,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(14),
                              borderSide: const BorderSide(
                                  width: 1, color: Colors.white),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(14),
                            ),
                            focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(14)),
                            ),
                            prefixText: '\$',
                            hintText: "Prix de l'engin",
                            hintStyle:
                                Theme.of(context).textTheme.bodySmall?.copyWith(
                                      color: Colors.grey,
                                      fontSize: 16,
                                    ),
                          ),
                          keyboardType: TextInputType.number,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Veuillez entrer le prix de l'engin";
                            }
                            return null;
                          },
                        ),
                        Text("Description",
                            style:
                                Theme.of(context).textTheme.bodyLarge?.copyWith(
                                      color: Colors.grey,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                    )),
                        TextFormField(
                          maxLines: 10,
                          minLines: 3,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor:
                                Theme.of(context).colorScheme.onSecondary,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(14),
                              borderSide: const BorderSide(
                                  width: 1, color: Colors.white),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(14),
                            ),
                            focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(14)),
                            ),
                            hintText: "Description de l'engin",
                            hintStyle: Theme.of(context)
                                .textTheme
                                .bodySmall
                                ?.copyWith(color: Colors.grey, fontSize: 16),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Veuillez entrer la description de l'engin";
                            }
                            return null;
                          },
                        ),
                        Text(
                          "Document du vehicule",
                          style:
                              Theme.of(context).textTheme.bodyLarge?.copyWith(
                                    color: Colors.grey,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                        ),
                        ElevatedButton.icon(
                          icon: Icon(Icons.file_upload),
                          onPressed: () {
                            // Handle file upload functionality here
                          },
                          label: Text("Charger le fichier"),
                        ),
                      ],
                    )),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  color: Theme.of(context).colorScheme.primary,
                ),
                child: TextButton(
                  child: Text(
                    "Publier",
                    style: Theme.of(context)
                        .textTheme
                        .displaySmall
                        ?.copyWith(color: Colors.white),
                  ),
                  onPressed: () {},
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).colorScheme.primary,
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
                        style: Theme.of(context).textTheme.headlineMedium),
              ),
            ],
          ),
        ),
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
          return HomePage();
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
