import 'package:flutter/material.dart';
import 'package:ram/Pages/Home.dart';
import 'package:ram/connexion/register/step1.dart';
import 'package:ram/connexion/login/Login.dart';

class Register extends StatefulWidget {
  const Register({super.key,});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {


  int statut=0;
  String email="";
  String pws="";
  String token = "";


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.white,
        automaticallyImplyLeading: false,
        bottom: PreferredSize(
          child: Text("let's create your profile"),
          preferredSize: Size(50, 150),
        ),
      ),

      body: SingleChildScrollView(
          padding: const EdgeInsets.only(left: 10,right: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20,),
              Text("E-mail adress",style: TextStyle(color: Colors.green),),
              SizedBox(height: 20,),
              TextField(
                onChanged: (val) {
                  email=val;
                },
                decoration: InputDecoration(
                    hintText: "Enter your E-mail adress",
                    hintStyle: TextStyle(color: Colors.black12),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1),
                        borderRadius: BorderRadius.circular(60)
                    ), focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1),
                  borderRadius: BorderRadius.circular(60),
                )
                ),
                maxLines: 5,
                minLines: 1,
              ),
              SizedBox(height: 20,),
              Text("user password",style: TextStyle(color: Colors.green),),
              SizedBox(height: 20,),
              TextField(
                onChanged: (val) {
                  pws=val;
                },
                decoration: InputDecoration(
                    hintText: "Enter your password",
                    hintStyle: TextStyle(color: Colors.black12),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1),
                        borderRadius: BorderRadius.circular(60)
                    ), focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1),
                    borderRadius: BorderRadius.circular(60)
                )
                ),
                maxLines: 5,
                minLines: 1,
              ),
              SizedBox(height: 50,),
              Row(mainAxisAlignment: MainAxisAlignment.center,children: [TextButton(child: Text(" Vous possédez déjà un compte, connectez vous",textAlign: TextAlign.center,),
                onPressed: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                        return Login();
                      }));
                },)],),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 50,
                padding: const EdgeInsets.only(left: 30,right: 30),
                child: ElevatedButton(
                    onPressed: (){
                      setState(() {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (BuildContext context) {
                              return step1();
                            }));
                      });
                    },
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(60)
                        ))
                    ),
                    child: Text("continue",style: TextStyle(color: Colors.white,fontSize: 18,))
                ),
              )
            ],
          )
      ),

    );
  }

}



