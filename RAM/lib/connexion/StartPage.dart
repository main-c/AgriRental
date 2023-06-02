import 'package:flutter/material.dart';
import 'package:ram/connexion/login/Login.dart';
import 'package:ram/connexion/login/Login.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});



  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Center(
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                color: Colors.black87,
                child: Ink.image(
                  image: AssetImage("images/gb1.jpg"),
                  fit: BoxFit.cover,
                  width: MediaQuery.of(context).size.height,
                  height: MediaQuery.of(context).size.width,
                  child: InkWell(
                    onTap: () {
                    },
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height/1.8,
                  ),
                  Text("RAM",style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.bold),),
                  SizedBox(height: 20,),
                  Text("",style: TextStyle(color: Colors.white,fontSize: 18,)),
                  Text("une palteforme des location d'engins agricole",style: TextStyle(color: Colors.white,fontSize: 18,)),
                  Text("",style: TextStyle(color: Colors.white,fontSize: 18,)),
                  SizedBox(height: 20,),
                  ElevatedButton(
                    onPressed: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (BuildContext context) {
                            return Login();
                          }));
                    },
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(60)
                      ))
                    ),
                    child: Text("get start for free ",style: TextStyle(color: Colors.white,fontSize: 18,))
                )
                ],
              )
            ],
          )
      ),

    );
  }
}
