import 'package:flutter/material.dart';
import 'package:agrorental/ui/pages/detailEngin.dart';

class enginInfo extends StatelessWidget {
  final String image;
  final String nom;
  final double rating;
  final String localisation;


  enginInfo({
    required this.image,
    required this.nom,
    required this.rating,
    required this.localisation,
  });

  GlobalKey mywidgetKey = GlobalKey();


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
        margin:EdgeInsets.only(left: 10,top: 5,right: 15,bottom: 5),

        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
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
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/3.8,
              child: Align(
                child: Padding(
                    padding: EdgeInsets.only(left: 0,top: 0,right: 0,bottom: 0),
                    child: Material(
                      borderRadius: BorderRadius.circular(5),
                      elevation: 2.0,
                      clipBehavior: Clip.hardEdge,
                      color: Colors.transparent,
                      child: Ink.image(
                        image: AssetImage(image),
                        fit: BoxFit.cover,
                        child: InkWell(
                          onTap: (){

                          },
                        ),
                      ),
                    )
                ),
                alignment: Alignment.center,
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 60,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Align(
                    child: Padding(
                        padding: EdgeInsets.only(left: 20),
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
                    alignment: Alignment.topLeft,
                  ),
                  Align(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 5.0),
                      child:Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(Icons.star,size: 16,color: Colors.orange,),
                              Text(" "+rating.toString()+
                                  "/5 Rating",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black
                                ),),
                            ],
                          ),Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(Icons.location_on,size: 16,color: Colors.orange,),
                              Text(" "+localisation,
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black
                                ),),
                            ],
                          ),
                        ],
                      ),
                    ),
                    alignment: Alignment.center,
                  ),
                ],
              )
            ),
            SizedBox(height: 5,)

          ],
        ),
      ),
    );
  }


}