import 'package:flutter/material.dart';

import 'Accueil.dart';
import 'AffichageEngins.dart';
import 'HomePage2.dart';
import 'auth/login.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Stack(
        alignment: AlignmentDirectional.topCenter,
        clipBehavior: Clip.none,
        children: [
          Container(
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(120),
                    bottomRight: Radius.circular(120))),
            height: MediaQuery.of(context).size.height / 2,
            width: MediaQuery.of(context).size.width,
          ),
          Container(
            margin: EdgeInsets.only(
                top: MediaQuery.of(context).size.height / 2 - 70),
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(360))),
            height: 120,
            width: 120,
            child: const Padding(
                padding: EdgeInsets.only(top: 0),
                child: DecoratedBox(
                  decoration: ShapeDecoration(
                      shape: CircleBorder(),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("images/logoImg.jpg"),
                      )),
                )),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 1.6,
              ),
              RichText(
                text: TextSpan(
                    text: "Agro",
                    style: Theme.of(context).textTheme.displayLarge?.copyWith(
                        color: Theme.of(context).colorScheme.secondary,
                        fontSize: 40),
                    children: [
                      TextSpan(
                          text: "Rental",
                          style: Theme.of(context)
                              .textTheme
                              .displayLarge
                              ?.copyWith(
                                  color: Theme.of(context).colorScheme.primary,
                                  fontSize: 40))
                    ]),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Découvrez les différents engins agricoles\nmisent à votre disposition",
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium
                    ?.copyWith(color: Colors.black),
              ),
              const SizedBox(
                height: 100,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                      return Accueil(title: "Hello");
                    }));
                  },
                  style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all(Size(250, 50)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(60)))),
                  child: Text("Commencer",
                      style: Theme.of(context).textTheme.headlineMedium))
            ],
          ),
        ],
      )),
    );
  }
}
