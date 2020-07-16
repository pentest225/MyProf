import 'package:flutter/material.dart';
import 'package:myprofmobil/outils/myStyle.dart';

import 'Inscription.dart';
import 'home_screen.dart';
import 'regis.dart';

class Connexion extends StatefulWidget {
  static const routeNamed = "/connexion";
  @override
  _ConnexionState createState() => _ConnexionState();
}

class _ConnexionState extends State<Connexion> {
  @override
  Widget build(BuildContext context) {

    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;


    return Scaffold(
      body: Container(
        height: deviceHeight,
        width: deviceWidth,
        //color: themeColor,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [themeColor, Colors.orangeAccent]
            )
        ),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  height: 250,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: 50),
                      Row(
                        children: <Widget>[
                          InkWell(
                            onTap:() {
                              Navigator.pop(context);
                            },
                            child: Icon(Icons.arrow_back_ios,
                                color: Colors.white, size: 25),
                          ),
                        ],
                      ),
                      SizedBox(height: 30),
                      Text(
                        "Connexion",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontFamily: 'BAARS',
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: <Widget>[
                          Text(
                            "20%",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: 10),
                          Text(
                            "Complete",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 5,),
              Container(
                height: deviceHeight/1.56,
                decoration: BoxDecoration(
                  color: fondcolor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.only(left: 50, right: 50),
                        child:  Text(
                          "Entrez vos identifiants",
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      //SizedBox(height: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Username",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5,),
                          Container(
                            height: 40,
                            width: MediaQuery.of(context).size.width / 1.2,
                            decoration: BoxDecoration(
                                color: fondcolor,
                                border: Border(
                                  bottom: BorderSide(color: Colors.grey),
                                )),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "username",
                                    hintStyle:
                                    TextStyle(color: Colors.black26),
                                    prefixIcon: Icon(Icons.person,
                                      color: Colors.grey, size: 22,)),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Mot de passe",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5,),
                          Container(
                            height: 40,
                            width: MediaQuery.of(context).size.width / 1.2,
                            decoration: BoxDecoration(
                                color: fondcolor,
                                border: Border(
                                  bottom: BorderSide(color: Colors.grey),
                                )),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "mot de passe",
                                  hintStyle:
                                  TextStyle(color: Colors.black26),
                                  prefixIcon:
                                  Icon(Icons.lock, color: Colors.grey, size: 20,),),
                              ),
                            ),
                          ),
                          SizedBox(height: 40),
                          InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                            },
                            child: Container(
                              margin: EdgeInsets.only(left: 60, right: 60),
                              height: 40,
                              width: 200,
                              decoration: BoxDecoration(
                                  color: themeColor,
                                  borderRadius: BorderRadius.circular(50),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black87,
                                        offset: Offset(0.0, 1.5),
                                        blurRadius: 1.5
                                    )
                                  ]
                              ),
                              child: Center(
                                child: Text(
                                  "Connecter",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text('Pas de compte? ', style: TextStyle(
                                  color: Colors.black54, fontSize: 16, fontFamily: 'BAARS'
                              ),),
                              InkWell(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => Regis()));
                                },
                                child: Text("S'inscrire", style: TextStyle(
                                    color: themeColor, fontSize: 16, fontFamily: 'BAARS', fontWeight: FontWeight.bold
                                ),),
                              ),

                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
