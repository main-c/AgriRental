import 'package:flutter/material.dart';
import 'package:agrorental/ui/widgets/grilleEngins.dart';
import 'package:agrorental/ui/pages/Accueil.dart';

import 'HomePage2.dart';

class listEngins extends StatefulWidget {
  const listEngins({super.key});

  @override
  State<listEngins> createState() => _listEnginsState();
}

class _listEnginsState extends State<listEngins> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  String nomproj = "";

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        child: DefaultTabController(
            length: 3,
            child: Scaffold(
              appBar: AppBar(
                elevation: 1,
                leading: IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                      return Accueil(title: "title");
                    }));
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.black87,
                  ),
                ),
                title: Text("Nos engins"),
                centerTitle: true,
                backgroundColor: Colors.white,
                bottom: const TabBar(
                    indicatorColor: Colors.green,
                    indicatorWeight: 4,
                    labelColor: Colors.green,
                    unselectedLabelColor: Colors.grey,
                    tabs: [
                      Tab(
                        text: "Tracteur",
                      ),
                      Tab(
                        text: "Drones",
                      ),
                      Tab(
                        text: "Autre",
                      ),
                    ]),
              ),
              body: TabBarView(children: [
                ListPage(
                  title: "Tracteur",
                ),
                ListPage(
                  title: "Drones",
                ),
                ListPage(
                  title: "Autres",
                ),
              ]),
            )),
        onWillPop: () {
          print("object");

          //Navigator.pop(context,false);
          return Future.value(false);
        });
  }
}
