import 'package:flutter/material.dart';
import 'package:agrorental/ui/pages/detailEngin.dart';

class enginInfo extends StatelessWidget {
  final String image;
  final String nom;


  enginInfo({
    required this.image,
    required this.nom,
  });



  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(20),
      splashColor: Colors.green,
      onTap: (){
        Navigator.push(context,
            MaterialPageRoute(builder: (BuildContext context) {
              return EnginDetail(image: image, nom: nom);
            }));
      },
      child: Container(
        width: 220,
        margin:EdgeInsets.only(left: 2,top: 5,right: 15,bottom: 5),

        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.6),
              offset: Offset.zero,
              blurRadius: 5.0,
              spreadRadius: -3.0,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(height: 10,),
            Align(
              child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.0),
                  child: Text(
                    nom,
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                    ),
                    overflow: TextOverflow.ellipsis,
                    textScaleFactor: 1,
                    maxLines: 5,
                    textAlign: TextAlign.center,
                  )
              ),
              alignment: Alignment.center,
            ),
            Align(
              child: Padding(
                  padding: EdgeInsets.only(left: 10,top: 0,right: 10,bottom: 2),
                  child: Material(
                    borderRadius: BorderRadius.circular(20),
                    elevation: 2.0,
                    clipBehavior: Clip.hardEdge,
                    color: Colors.transparent,
                    child: Ink.image(
                      image: AssetImage(image),
                      fit: BoxFit.cover,
                      width: 350,
                      height: 180,
                      child: InkWell(
                        onTap: (){

                        },
                      ),
                    ),
                  )
              ),
              alignment: Alignment.center,
            ),
            Align(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 5.0),
                child:Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "En savoir plus",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black
                      ),),
                    Icon(Icons.arrow_forward,size: 16,)
                  ],
                ),
              ),
              alignment: Alignment.center,
            ),
            SizedBox(height: 5,)

          ],
        ),
      ),
    );
  }


}