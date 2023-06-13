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

      body:  GridView.count(
        crossAxisCount: 1,
        children: List.generate(10, (index) {
          return InkWell(
              onLongPress: (){
                //selection
              },
              child:  enginInfo(image: "images/trac1.jpeg",nom: "nom")
          );
        }),
      ),

    );
  }

}
