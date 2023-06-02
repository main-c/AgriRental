import 'package:flutter/material.dart';
import 'package:ram/Pages/Home.dart';
import 'package:ram/connexion/login/Login.dart';

class step1 extends StatefulWidget {
  const step1({super.key,});

  @override
  State<step1> createState() => _step1State();
}

class _step1State extends State<step1> {


  int statut=0;
  String email="";
  String pws="";
  String token = "";


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){},icon: Icon(Icons.arrow_back),color: Colors.green,),
        backgroundColor: Colors.white,
        shadowColor: Colors.white,
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
              Text("",),
              SizedBox(height: 20,),
              Text("what will you use it for ??",style: TextStyle(color: Colors.green),),
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
              Container(
                width: MediaQuery.of(context).size.width,
                height: 50,
                padding: const EdgeInsets.only(left: 30,right: 30),
                child: ElevatedButton(
                    onPressed: (){
                      setState(() {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (BuildContext context) {
                              return Home(title: "RAM");
                            }));
                      });
                    },
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(60)
                        ))
                    ),
                    child: Text("next",style: TextStyle(color: Colors.white,fontSize: 18,))
                ),
              )
            ],
          )
      ),

    );
  }

}



