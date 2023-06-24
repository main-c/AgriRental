import 'package:agrorental/models/engin.dart';
import 'package:agrorental/ui/widgets/engin_widget.dart';
import 'package:flutter/material.dart';
import 'package:agrorental/ui/widgets/navigationBarre.dart';
import 'package:agrorental/ui/pages/AffichageEngins.dart';

import '../widgets/card_engin.dart';

class Accueil extends StatefulWidget {
  const Accueil({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<Accueil> createState() => _AccueilState();
}

class _AccueilState extends State<Accueil> {
  int engin = 1;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        appBar: AppBar(
          titleSpacing: MediaQuery.of(context).size.width / 6,
          title: Container(
            height: 30,
            color: Colors.white,
            child: Image(
              image: AssetImage("images/logo.jpg"),
            ),
          ),
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: Icon(
                  Icons.dehaze_rounded,
                  size: 30,
                  color: Colors.white,
                ),
              );
            },
          ),
          leadingWidth: 60,
          backgroundColor: Colors.white,
          bottom: PreferredSize(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width / 1.1,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                        offset: Offset(0, 0),
                        blurRadius: 0,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                  child: const Center(
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(25),
                          ),
                        ),
                        hintStyle: TextStyle(fontSize: 12),
                        hintText: 'Chercher un engin',
                        prefixIcon: Icon(Icons.search),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
            preferredSize: Size(50, 70),
          ),
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.only(left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Explorer \nnos engins",
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 32,
                padding: EdgeInsets.only(left: 20, right: 10, top: 3),
                margin: EdgeInsets.only(left: 0, right: 0, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Nouveautés",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (BuildContext context) {
                            return listEngins();
                          }),
                        );
                      },
                      child: Text(
                        "Voir tout",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.orange,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.only(left: 20),
                height: 60,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                engin = 1;
                              });
                            },
                            style: ButtonStyle(
                              elevation: MaterialStateProperty.all(0),
                              backgroundColor: MaterialStateProperty.all(
                                engin == 1 ? Colors.green : Colors.white,
                              ),
                              side: MaterialStateProperty.all(
                                BorderSide(
                                  color: engin == 1
                                      ? Colors.green
                                      : Colors.black12,
                                  width: 2,
                                ),
                              ),
                              minimumSize: MaterialStateProperty.all(
                                Size(80, 30),
                              ),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(60),
                                ),
                              ),
                            ),
                            child: Text(
                              "Tous",
                              style: TextStyle(
                                color:
                                    engin == 1 ? Colors.white : Colors.black38,
                              ),
                            ),
                          ),
                          SizedBox(width: 20),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                engin = 2;
                              });
                            },
                            style: ButtonStyle(
                              elevation: MaterialStateProperty.all(0),
                              backgroundColor: MaterialStateProperty.all(
                                engin == 2 ? Colors.green : Colors.white,
                              ),
                              side: MaterialStateProperty.all(
                                BorderSide(
                                  color: engin == 2
                                      ? Colors.green
                                      : Colors.black12,
                                  width: 2,
                                ),
                              ),
                              minimumSize: MaterialStateProperty.all(
                                Size(80, 30),
                              ),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(60),
                                ),
                              ),
                            ),
                            child: Text(
                              "Tracteurs",
                              style: TextStyle(
                                color:
                                    engin == 2 ? Colors.white : Colors.black38,
                              ),
                            ),
                          ),
                          SizedBox(width: 20),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                engin = 3;
                              });
                            },
                            style: ButtonStyle(
                              elevation: MaterialStateProperty.all(0),
                              backgroundColor: MaterialStateProperty.all(
                                engin == 3 ? Colors.green : Colors.white,
                              ),
                              side: MaterialStateProperty.all(
                                BorderSide(
                                  color: engin == 3
                                      ? Colors.green
                                      : Colors.black12,
                                  width: 2,
                                ),
                              ),
                              minimumSize: MaterialStateProperty.all(
                                Size(80, 30),
                              ),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(60),
                                ),
                              ),
                            ),
                            child: Text(
                              "Drones",
                              style: TextStyle(
                                color:
                                    engin == 3 ? Colors.white : Colors.black38,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding:
                    EdgeInsets.only(left: 20, top: 5, right: 10, bottom: 5),
                height: 330,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10, //nombre de messages dans la bd
                    itemBuilder: (context, index) {
                      return InkWell(
                          onTap: () {},
                          child: enginInfo(
                            image: "images/trac1.jpeg",
                            nom: engins[index].name,
                            rating: engins[index].rate,
                            localisation: "Yaoundé",
                          ));
                    }),
              ),
              SizedBox(height: 20),
              Container(
                height: 32,
                padding: const EdgeInsets.only(left: 20, right: 10, top: 3),
                margin: const EdgeInsets.only(left: 0, right: 0, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Les plus commandés",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        // Naviguer vers la liste des engins les plus commandés
                      },
                      child: const Text(
                        "Voir tout",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.orange,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding:
                    EdgeInsets.only(left: 20, top: 5, right: 10, bottom: 5),
                height: 330,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10, //nombre de messages dans la bd
                    itemBuilder: (context, index) {
                      return InkWell(
                          onTap: () {},
                          child: enginInfo(
                            image: "images/trac1.jpeg",
                            nom: "New Holland T6070",
                            rating: 4.1,
                            localisation: "Yaoundé",
                          ));
                    }),
              ),
              SizedBox(height: 20),
              Container(
                height: 32,
                padding: EdgeInsets.only(left: 20, right: 10, top: 3),
                margin: EdgeInsets.only(left: 0, right: 0, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Découvrir",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        // Naviguer vers la liste des engins à découvrir
                      },
                      child: Text(
                        "Voir tout",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.orange,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding:
                    EdgeInsets.only(left: 20, top: 5, right: 10, bottom: 5),
                height: 330,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10, //nombre de messages dans la bd
                    itemBuilder: (context, index) {
                      return InkWell(
                          onTap: () {},
                          child: enginInfo(
                            image: "images/trac1.jpeg",
                            nom: "New Holland T6070",
                            rating: 4.1,
                            localisation: "Yaoundé",
                          ));
                    }),
              )
            ],
          ),
        ),
        bottomNavigationBar: navigationBarre(),
      ),
      onWillPop: () {
        print("object");

        //Navigator.pop(context,false);
        return Future.value(false);
      },
    );
  }
}
