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
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (BuildContext context) {
          return EnginDetail(image: image, nom: nom);
        }));
      },
      child: Container(
        width: 220,
        height: 300,
        margin: const EdgeInsets.only(left: 10, top: 5, right: 15, bottom: 20),
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
        child: GridTile(
          footer: GridTileBar(
            backgroundColor: Colors.black54,
            title: Text(
              nom,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            subtitle: Text(localisation),
            trailing: const Icon(Icons.star),
          ),
          child: Image.network(
            'https://loozap.com/storage/files/cm/afl/635834.jpg',
            fit: BoxFit.cover,
          ),
        ),
        // child: Column(
        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //   children: [
        //     Container(
        //       width: MediaQuery.of(context).size.width,
        //       height: MediaQuery.of(context).size.height / 3.8,
        //       child: Align(
        //         alignment: Alignment.center,
        //         child: Padding(
        //             padding: const EdgeInsets.only(
        //                 left: 0, top: 0, right: 0, bottom: 0),
        //             child: Material(
        //               borderRadius: BorderRadius.circular(5),
        //               elevation: 2.0,
        //               clipBehavior: Clip.hardEdge,
        //               color: Colors.transparent,
        //               child: Ink.image(
        //                 image: AssetImage(image),
        //                 fit: BoxFit.fill,
        //                 child: InkWell(
        //                   onTap: () {},
        //                 ),
        //               ),
        //             )),
        //       ),
        //     ),

        //       Container(
        //           width: MediaQuery.of(context).size.width,
        //           height: 60,
        //           child: Column(
        //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //             children: [
        //               Align(
        //                 alignment: Alignment.topLeft,
        //                 child: Padding(
        //                     padding: const EdgeInsets.only(left: 10),
        //                     child: Text(
        //                       nom,
        //                       style: TextStyle(
        //                           fontSize: 16,
        //                           color: Colors.black,
        //                           fontWeight: FontWeight.bold),
        //                       overflow: TextOverflow.ellipsis,
        //                       textScaleFactor: 1,
        //                       maxLines: 5,
        //                       textAlign: TextAlign.center,
        //                     )),
        //               ),
        //               Align(
        //                 child: Container(
        //                   padding: EdgeInsets.symmetric(horizontal: 5.0),
        //                   child: Row(
        //                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //                     children: [
        //                       Row(
        //                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //                         children: [
        //                           Icon(
        //                             Icons.star,
        //                             size: 16,
        //                             color: Colors.orange,
        //                           ),
        //                           Text(
        //                             " " + rating.toString(),
        //                             style: TextStyle(
        //                                 fontSize: 14, color: Colors.black),
        //                           ),
        //                         ],
        //                       ),
        //                       Row(
        //                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //                         children: [
        //                           Icon(
        //                             Icons.location_on,
        //                             size: 16,
        //                             color: Colors.orange,
        //                           ),
        //                           Text(
        //                             " " + localisation,
        //                             style: TextStyle(
        //                                 fontSize: 14, color: Colors.black),
        //                           ),
        //                         ],
        //                       ),
        //                     ],
        //                   ),
        //                 ),
        //                 alignment: Alignment.center,
        //               ),
        //             ],
        //           )),
        //       SizedBox(
        //         height: 5,
        // )
        // ],
        // ),
      ),
    );
  }
}
