import 'package:agrorental/ui/pages/AffichageEngins.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:agrorental/ui/pages/auth/login.dart';
import 'package:agrorental/ui/theme/theme.dart';
import 'package:agrorental/ui/pages/Accueil.dart';

class navigationBarre extends StatefulWidget {
  const navigationBarre({super.key});

  @override
  State<navigationBarre> createState() => _navigationBarreState();
}

class _navigationBarreState extends State<navigationBarre> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                IconButton(
                    onPressed: null,
                    icon: Icon(Icons.home_outlined,
                        color: Colors.green, size: 30)),
                Text(
                  "Accueil",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.green,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                    onPressed: () {
                      setState(() {
                        Navigator.push<void>(
                          context,
                          MaterialPageRoute<void>(
                            builder: (BuildContext context) => listEngins(),
                          ),
                        );
                      });
                    },
                    icon: Icon(Icons.agriculture,
                        color: Colors.black54, size: 30)),
                Text(
                  "Tous les engins",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black45,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                    onPressed: () {
                      setState(() {
                        Navigator.push<void>(
                          context,
                          MaterialPageRoute<void>(
                            builder: (BuildContext context) => LoginPage(),
                          ),
                        );
                      });
                    },
                    icon: Icon(
                      Icons.login,
                      color: Colors.black54,
                      size: 30,
                    )),
                Text(
                  "Connexion",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black45,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
