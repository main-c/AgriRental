import 'package:agrorental/ui/pages/Booking.dart';
import 'package:flutter/material.dart';
import 'package:agrorental/ui/widgets/card_engin.dart';
import 'package:agrorental/ui/pages/AffichageEngins.dart';

class EnginDetail extends StatefulWidget {
  const EnginDetail({super.key, required this.image, required this.nom});

  final String image;
  final String nom;

  @override
  State<EnginDetail> createState() => _EnginDetailState();
}

class _EnginDetailState extends State<EnginDetail> {
  int qte = 0;
  int totalprice = 0;

  String description = "La description";
  int prix = 100000;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  List<dynamic> foods = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (BuildContext context) {
              return listEngins();
            }));
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black87,
          ),
        ),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.help_outline))],
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Align(
              child: Padding(
                  padding:
                      EdgeInsets.only(left: 0, top: 0, right: 0, bottom: 0),
                  child: Material(
                    elevation: 2.0,
                    clipBehavior: Clip.hardEdge,
                    color: Colors.transparent,
                    child: Ink.image(
                      image: AssetImage(widget.image),
                      fit: BoxFit.fill,
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 3,
                      child: InkWell(
                        onTap: () {},
                      ),
                    ),
                  )),
              alignment: Alignment.center,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Align(
                  child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.0),
                      child: Text(
                        widget.nom,
                        style: TextStyle(
                            fontSize: 19,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 5,
                        textAlign: TextAlign.center,
                      )),
                  alignment: Alignment.center,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //SizedBox(width: 10,),
                Align(
                  child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.0),
                      child: Row(
                        children: [
                          Text(
                            "Location par jour : " + prix.toString() + " FCFA",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 5,
                            textAlign: TextAlign.center,
                          ),
                        ],
                      )),
                  alignment: Alignment.center,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Align(
                  child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.0),
                      child: Text(
                        "Description",
                        style: TextStyle(
                            fontSize: 19,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 5,
                        textAlign: TextAlign.center,
                      )),
                  alignment: Alignment.topLeft,
                ),
                SizedBox(
                  height: 5,
                ),
                Align(
                  child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.0),
                      child: Text(
                        description,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 5,
                        textAlign: TextAlign.left,
                      )),
                  alignment: Alignment.center,
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  color: Colors.black12,
                  height: 1,
                  width: MediaQuery.of(context).size.width / 1.05,
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Nos autres Engins",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Container(
                  height: 330,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return InkWell(
                            onLongPress: () {
                              //selection
                            },
                            onTap: () {},
                            child: enginInfo(
                              image: "images/trac1.jpeg",
                              nom: "New Holland T6070",
                              rating: 4.1,
                              localisation: "yaoundé",
                            ));
                      }),
                )
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
          color: Colors.white,
          child: Container(
            height: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            Navigator.push<void>(
                              context,
                              MaterialPageRoute<void>(
                                builder: (BuildContext context) =>
                                    ReservationPage(),
                              ),
                            );
                          },
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))),
                              maximumSize:
                                  MaterialStateProperty.all(Size(210, 50))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.shopping_cart_outlined,
                                color: Colors.white,
                              ),
                              Text(" Faire une demande ",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                  ))
                            ],
                          )),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
