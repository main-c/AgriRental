import 'package:flutter/material.dart';
import 'package:agrorental/pages/Login.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});


  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Center(
          child: Stack(
            alignment: AlignmentDirectional.topCenter,
            clipBehavior: Clip.none,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.black87,
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(120),bottomRight: Radius.circular(120))
                ),
                height: MediaQuery.of(context).size.height/2,
                width: MediaQuery.of(context).size.width,
              ),
              Container(
                margin: EdgeInsets.only(top: MediaQuery.of(context).size.height/2-70),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(360))
                ),
                height: 120,
                width: 120,
                child: Padding(
                    padding: EdgeInsets.only(top: 0),
                    child: DecoratedBox(
                      decoration: ShapeDecoration(
                          shape: CircleBorder(),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("images/logoImg.jpg"),
                          )
                      ),
                    )),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(height: MediaQuery.of(context).size.height/1.6,),
                 Row(mainAxisAlignment: MainAxisAlignment.center,
                   children: [Text("Agro",style: TextStyle(color: Colors.orange,fontSize: 40,fontWeight: FontWeight.bold),),Text("Rental",style: TextStyle(color: Colors.green,fontSize: 40,fontWeight: FontWeight.bold),),],),
                  SizedBox(height: 20,),
                  Text("la premiere plateforme \nde location d'engin agricoles au Cameroun",textAlign: TextAlign.center, style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),),
                  SizedBox(height: 100,),
                  ElevatedButton(
                      onPressed: (){
                        Navigator.push(context, 
                        MaterialPageRoute(builder:(BuildContext context) {
                            return Login();
                            }));
                      },
                      style: ButtonStyle(
                          minimumSize: MaterialStateProperty.all(Size(250, 50)),
                          shape: MaterialStateProperty.all(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(60)
                          ))
                      ),
                      child: Text("commencer",style: TextStyle(color: Colors.white,fontSize: 18,))
                  )
                ],
              ),


            ],
          )
      ),

    );
  }
}
