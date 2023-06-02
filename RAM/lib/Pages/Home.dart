import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  const Home({super.key, required this.title});

  final String title;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  String nomproj="";







  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        bottom: PreferredSize(
          preferredSize: Size(50, 00),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 40,
                width: MediaQuery
                    .of(context)
                    .size
                    .width / 1.3,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  boxShadow: const [
                    BoxShadow(
                        offset: Offset(0, 0),
                        blurRadius: 5,
                        color: Colors.grey)
                  ],
                ),
                child: const Center(
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintStyle: TextStyle(fontSize: 12),
                      hintText: 'Search for something',
                      prefixIcon: Icon(Icons.search),
                      suffixIcon: Icon(Icons.mic),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 5,),
              Container(
                height: 40,
                width: 45,
                child: ElevatedButton(onPressed: (){}, child: Icon(Icons.star_border_outlined,color: Colors.white70,size: 16,)),
              )
            ],
          )
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height/12,
            ),
            Container(
              color: Colors.black12,
                height: MediaQuery.of(context).size.height/1.5,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                    itemCount: 20,
                    itemBuilder: (context,index){
                      return InkWell(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    child: ElevatedButton(onPressed: () {


                                    },
                                      child: Text(nomproj),
                                    ),
                                    width: 300.0,

                                  ),
                                  IconButton(onPressed: () {},
                                    icon: Icon(Icons.delete),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      );

                    })
            ),

          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(padding: const EdgeInsets.only(left: 0.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                      onPressed: (){
                        setState(() {
                          /*Navigator.push(context, new MaterialPageRoute(builder: (BuildContext context){
                            return AjouteEntree(title: 'Ajouter une entrée',);
                          }));*/
                        });
                      },
                      icon: Icon( Icons.event_available,color: Colors.black54)
                  ),
                  Text("obtenu",style: TextStyle(fontSize: 12,color: Colors.black54),)
                ],
              ),
            ),
            Padding(padding: const EdgeInsets.only(left: 10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                      onPressed: (){
                        setState(() {
                          /*Navigator.push(context, new MaterialPageRoute(builder: (BuildContext context){
                            return ListeEntree(title: 'Liste Des Entrées',);
                          }));*/
                        });
                      },
                      icon: Icon( Icons.event,color: Colors.black54)
                  ),
                  Text("dispo",style: TextStyle(fontSize: 12,color: Colors.black54),)
                ],
              ),
            ),
            Padding(padding: const EdgeInsets.only(left: 10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                      onPressed: null,
                      icon: Icon( Icons.home_outlined,color: Colors.green,size: 35,)
                  ),
                  Text("Accueil",style: TextStyle(fontSize: 14,color: Colors.green),)
                ],
              ),
            ),
            Padding(padding: const EdgeInsets.only(left: 10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                      onPressed: (){
                        setState(() {
                          /*Navigator.push(context, new MaterialPageRoute(builder: (BuildContext context){
                            return ListeSortie(title: 'Liste Des sorties',);
                          }));*/
                        });
                      },
                      icon: Icon( Icons.event_busy_outlined,color: Colors.black54)
                  ),
                  Text("Occupé",style: TextStyle(fontSize: 12,color: Colors.black54),)
                ],
              ),
            ),
            Padding(padding: const EdgeInsets.only(left: 10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                      onPressed: (){
                        setState(() {
                          /*Navigator.push(context, new MaterialPageRoute(builder: (BuildContext context){
                            return ListeSortie(title: 'Liste Des sorties',);
                          }));*/
                        });
                      },
                      icon: Icon( Icons.person_2_outlined,color: Colors.black54)
                  ),
                  Text("Profile",style: TextStyle(fontSize: 12,color: Colors.black54),)
                ],
              ),
            )

          ],
        ),

      ),floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

    );
  }


  Future<Null> dialog()async{
    return showDialog(context: context,
        barrierDismissible: true,
        builder: (BuildContext context){
          return new SimpleDialog(
            title: new Text("Entrer le nom de votre projet",textScaleFactor: 1.4,style: TextStyle(fontSize: 12),),
            contentPadding: EdgeInsets.all(10.0),
            children: [
              new TextField(
                keyboardType: TextInputType.text,
                onChanged: (value) => nomproj=value,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  hintText: "Repas consomé",
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(onPressed: (){
                    setState(() {
                      print(nomproj);
                      addProjetbd(nomproj);
                      addProjetaff();
                    });

                  }, child: Text("ajouter")
                  ),
                  ElevatedButton(onPressed: (){
                    setState(() {

                    });

                  }, child: Text("annuler")
                  )
                ],
              )
            ],
          );
        });
  }


  void addProjetbd(String nom){

  }
  addProjetaff() async {

    for(int i=0; i<10 ;i++) {

    }
  }





}
