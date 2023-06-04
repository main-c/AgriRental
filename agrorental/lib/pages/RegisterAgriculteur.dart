import 'package:agrorental/pages/Login.dart';
import 'package:flutter/material.dart';

class RegisterAgriculteur extends StatefulWidget {
  const RegisterAgriculteur({super.key,});

  @override
  State<RegisterAgriculteur> createState() => _RegisterAgriculteurState();
}

class _RegisterAgriculteurState extends State<RegisterAgriculteur> {

  //late User user ;
  //TextEditingController textInput = TextEditingController();
  int statut=0;
  String noms="";
  String prenoms="";
  String email="";
  String tel="";
  String password="";
  String token = "";
  String adresse= "";
  String birthDate = "";
  String formattedDate ="";

  TextEditingController dateInput = TextEditingController();

  List<dynamic> tok = [];

  String testEmail= "";
  int test=0;


  @override
  Widget build(BuildContext context) {
    print(password);

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
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [Text("Creez votre compte agriculteur",style: TextStyle(color: Colors.black,fontSize: 22,)),],),
              SizedBox(height: 30,),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20,),
                  Text("Nom",),
                  SizedBox(height: 5,),
                  Container(
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
                        setState(() {
                          noms=val;
                        });
                      },
                      decoration: InputDecoration(
                          labelText: test==1 && noms.length<1?"ce champ ne dois pas etre vide":null,
                          labelStyle: TextStyle(color: Colors.red),
                          hintText: "Entrez votre nom",
                          hintStyle: TextStyle(color: Colors.black12),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 0.1),
                              borderRadius: BorderRadius.circular(20)
                          ), focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 0.1),
                          borderRadius: BorderRadius.circular(20)
                      )
                      ),
                      maxLines: 5,
                      minLines: 1,
                    ),
                  ),
                  SizedBox(height: 20,),
                  Text("Prenom",),
                  SizedBox(height: 5,),
                  Container(
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
                        setState(() {
                          prenoms=val;
                        });
                      },
                      decoration: InputDecoration(
                          labelText: test==1 && prenoms.length<1?"ce champ ne dois pas etre vide":null,
                          labelStyle: TextStyle(color: Colors.red),
                          hintText: "Entrez votre prenom",
                          hintStyle: TextStyle(color: Colors.black12),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 0.1),
                              borderRadius: BorderRadius.circular(20)
                          ), focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 0.1),
                          borderRadius: BorderRadius.circular(20)
                      )
                      ),
                      maxLines: 5,
                      minLines: 1,
                    ),
                  ),
                  SizedBox(height: 20,),
                  Text("Password"),
                  SizedBox(height: 5,),
                  Container(
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
                        setState(() {
                          testEmail="";
                          email=val;
                        });
                      },
                      decoration: InputDecoration(
                          labelText: test!=1 && email.length>=1 || testEmail!="Email non valide" && testEmail!="Path `email` is required."?null:testEmail ,
                          labelStyle: TextStyle(color: Colors.red),
                          hintText: "Entrez votre adress mail",
                          hintStyle: TextStyle(color: Colors.black12),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 0.1),
                              borderRadius: BorderRadius.circular(20)
                          ), focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 0.1),
                          borderRadius: BorderRadius.circular(20)
                      )
                      ),
                      maxLines: 5,
                      minLines: 1,
                    ),
                  ),
                  SizedBox(height: 20,),
                  Text("Pays"),
                  SizedBox(height: 5,),
                  Container(
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
                        setState(() {
                          password=val;
                        });
                      },
                      decoration: InputDecoration(
                          labelText: test==1 && password.length<1 || password.length>=1 && password.length<6?"minimum 6 charactere":null,
                          labelStyle: TextStyle(color: Colors.red),
                          hintText: "Enter your password",
                          hintStyle: TextStyle(color: Colors.black12),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 0.1),
                              borderRadius: BorderRadius.circular(20)
                          ), focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 0.1),
                          borderRadius: BorderRadius.circular(20)
                      )
                      ),
                      maxLines: 5,
                      minLines: 1,
                    ),
                  ),
                  SizedBox(height: 20,),
                  Text("Telephone"),
                  SizedBox(height: 5,),
                  Container(
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
                      keyboardType: TextInputType.phone,
                      onChanged: (val) {
                        setState(() {
                          tel=val;
                        });
                      },
                      decoration: InputDecoration(
                          labelText: test==1 && tel.length<1 || tel.length>=1 && tel.length<9?"numero de telephone invalid":null,
                          labelStyle: TextStyle(color: Colors.red),
                          hintText: "Entrez numero de telephone",
                          hintStyle: TextStyle(color: Colors.black12),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 0.1),
                              borderRadius: BorderRadius.circular(20)
                          ), focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 0.1),
                          borderRadius: BorderRadius.circular(20)
                      )
                      ),
                      maxLines: 5,
                      minLines: 1,
                    ),
                  ),
                  SizedBox(height: 20,),
                  Text("Adresse",),
                  SizedBox(height: 5,),
                  Container(
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
                        setState(() {
                          adresse=val;
                        });
                      },
                      decoration: InputDecoration(
                          labelText: test==1 && adresse.length<1?"ce champ ne dois pas etre vide":null,
                          labelStyle: TextStyle(color: Colors.red),
                          hintText: "Entrez votre adresse",
                          hintStyle: TextStyle(color: Colors.black12),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 0.1),
                              borderRadius: BorderRadius.circular(20)
                          ), focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 0.1),
                          borderRadius: BorderRadius.circular(20)
                      )
                      ),
                      maxLines: 5,
                      minLines: 1,
                    ),
                  ),
                  SizedBox(height: 20,),
                ],
              ),
              TextButton(
                  onPressed: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder:(BuildContext context) {
                          return Login();
                        }));
                  },
                  child: Row(mainAxisAlignment: MainAxisAlignment.center,children: [Text("Vous possédez déjà un compte ? ",style: TextStyle(color: Colors.black),),Text(" connectez vous")],)
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
                      child: Text("create account",style: TextStyle(color: Colors.white,fontSize: 18,))
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



