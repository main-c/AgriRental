import 'package:flutter/material.dart';
import 'package:agrorental/pages/RegisterAgriculteur.dart';


class Login extends StatefulWidget {
  const Login({super.key,});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {


  int statut=0;
  String email="";
  String pws="";
  String token = "";


  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: SingleChildScrollView(
          padding: const EdgeInsets.only(left: 10,right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Container(
                margin: EdgeInsets.only(top: MediaQuery.of(context).size.height/7,left: 30),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                height: 80,
                width: 300,
                child: Ink.image(image: AssetImage("images/logo.jpg"))
              ),
              SizedBox(height: 20,),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [Text("Bienvenu dans agroRental",style: TextStyle(color: Colors.black,fontSize: 22,)),],),
              SizedBox(height: 50,),
              Text("Votre adress email",style: TextStyle(color: Colors.black,fontSize: 14)),
              SizedBox(height: 10,),
              Container(
              //  padding: EdgeInsets.only(left: 10,top: 15,right: 10,bottom: 10),
                height: 48,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                        offset: Offset(0, 0),
                        blurRadius: 2,
                        color: Colors.grey)
                  ],
                ),
                child: TextField(
                  onChanged: (val) {
                    email=val;
                  },
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 10,top: 15,right: 10,bottom: 10),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.green
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black12
                      ),
                      borderRadius: BorderRadius.circular(20)
                    ),
                    hintText: "exemple@gmail.com",
                    hintStyle: TextStyle(color: Colors.black12),
                  ),
                  maxLines: 5,
                  minLines: 1,
                ),
              ),

              SizedBox(height: 20,),
              Text("Votre mot de passe",style: TextStyle(color: Colors.black,fontSize: 14,)),
              SizedBox(height: 10,),
              Container(
                //padding: EdgeInsets.only(left: 10,top: 15,right: 10,bottom: 10),
                height: 48,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                        offset: Offset(0, 0),
                        blurRadius: 2,
                        color: Colors.grey)
                  ],
                ),
                child: TextField(
                  onChanged: (val) {
                    pws=val;
                  },
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.remove_red_eye_outlined),
                    contentPadding: EdgeInsets.only(left: 10,top: 15,right: 10,bottom: 10),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.green
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.black12
                        ),
                        borderRadius: BorderRadius.circular(20)
                    ),
                    hintText: "Enter your password",
                    hintStyle: TextStyle(color: Colors.black12),
                  ),
                  maxLines: 5,
                  minLines: 1,
                ),
              ),
              SizedBox(height: 10,),
              TextButton(
                  onPressed: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder:(BuildContext context) {
                          return RegisterAgriculteur();
                        }));
                  },
                  child: Row(mainAxisAlignment: MainAxisAlignment.center,children: [Text("Vous ne possédez pas de compte ? ",style: TextStyle(color: Colors.black),),Text(" creer un compte")],)
              ),
              SizedBox(height: 30,),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: (){
                        setState(() {

                        });
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.green),
                          minimumSize: MaterialStateProperty.all(Size(MediaQuery.of(context).size.width-20, 50)),
                          shape: MaterialStateProperty.all(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(60)
                          ))
                      ),
                      child: Text("connexion",style: TextStyle(color: Colors.white,fontSize: 18,))
                  )
                ],
              ),
              SizedBox(height: 30,),
            ],
          )
      ),

    );
  }

}



