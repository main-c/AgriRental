import 'package:flutter/material.dart';
import 'package:agrorental/ui/widgets/card_engin.dart';

class lesEngins extends StatefulWidget {
  const lesEngins({super.key, required this.title});


  final String title;

  @override
  State<lesEngins> createState() => _lesEnginsState();
}

class _lesEnginsState extends State<lesEngins> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body:   ListView.builder(
        padding: EdgeInsets.only(left: 10,right: 10),
          scrollDirection: Axis.vertical,
          itemCount: 10, //nombre de messages dans la bd
          itemBuilder: (context, index) {
            return InkWell(
                onLongPress: () {
                  //selection
                },
                onTap: () {

                },
                child:  enginInfo(image: "images/trac1.jpeg",nom: "nom",rating: 4.1,localisation: "yaoundé",)
            );
          }),

    );
  }

}
