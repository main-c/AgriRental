import 'package:flutter/material.dart';
import 'package:agrorental/ui/widgets/card_engin.dart';

import '../pages/detailEngin.dart';

class ListPage extends StatefulWidget {
  const ListPage({super.key, required this.title});

  final String title;

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          padding: const EdgeInsets.only(left: 10, right: 10),
          scrollDirection: Axis.vertical,
          itemCount: 10, //nombre de messages dans la bd
          itemBuilder: (context, index) {
            return InkWell(
                onLongPress: () {
                  //selection
                },
                onTap: () {
                  Navigator.push<void>(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => const EnginDetail(
                          image: "images/trac1.jpeg", nom: "New Holland T6070"),
                    ),
                  );
                },
                child: enginInfo(
                  image: "images/trac1.jpeg",
                  nom: "New Holland T6070",
                  rating: 4.1,
                  localisation: "yaoundé",
                ));
          }),
    );
  }
}
