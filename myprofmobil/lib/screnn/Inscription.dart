import 'package:flutter/material.dart';
import 'package:myprofmobil/outils/myStyle.dart';

import 'connexion.dart';

class Inscription extends StatefulWidget {
  @override
  _InscriptionState createState() => _InscriptionState();
}

class _InscriptionState extends State<Inscription> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(133, 136, 241, 1),
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white,),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text('MyProfs'),
          centerTitle: true,
          elevation: 0,
        ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(height: 90,),
              Text('Inscriptions', style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 28
              ),),
              SizedBox(height: 50,),
              InkWell(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.only(left: 10),
                  height: 60,
                  width: MediaQuery.of(context).size.width/1.2,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(59, 89, 152, 1),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Row(
                    children: <Widget>[
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white
                        ),
                        child: Center(
                            child: Text('f', style: TextStyle(
                              fontWeight: FontWeight.bold, color: Color.fromRGBO(59, 89, 152, 1), fontSize: 18
                            ),)),
                      ),
                      SizedBox(width: 30,),
                      Text('Inscription avec facebook', style: TextStyle(
                          color: Colors.white, fontSize: 18, fontFamily: 'BAARS', fontWeight: FontWeight.w700
                      ),)
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10,),
              InkWell(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.only(left: 10),
                  height: 60,
                  width: MediaQuery.of(context).size.width/1.2,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(93, 153, 251, 1),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Row(
                    children: <Widget>[
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white
                        ),
                        child: Center(
                            child: Text('G', style: TextStyle(
                                fontWeight: FontWeight.bold, color: Color.fromRGBO(93, 153, 251, 1), fontSize: 16
                            ),)),
                      ),
                      SizedBox(width: 30,),
                      Text('Inscription avec Google', style: TextStyle(
                          color: Colors.white, fontSize: 18, fontFamily: 'BAARS', fontWeight: FontWeight.w700
                      ),)
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10,),
              InkWell(
                onTap: () {

                },
                child: Container(
                  padding: EdgeInsets.only(left: 10),
                  height: 60,
                  width: MediaQuery.of(context).size.width/1.2,
                  decoration: BoxDecoration(
                      color: Colors.pink.withOpacity(.8),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Row(
                    children: <Widget>[
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white
                        ),
                        child: Center(
                            child: Icon(Icons.mail, size: 14, color: Colors.pink.withOpacity(.8),)
                        ),
                      ),
                      SizedBox(width: 30,),
                      Text('Inscription par e-mail', style: TextStyle(
                          color: Colors.white, fontSize: 18, fontFamily: 'BAARS', fontWeight: FontWeight.w700
                      ),)
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Vous avez déja un compte? ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 14
                  ),),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Connexion()));
                    },
                      child: Text('Connectez-vous', style: TextStyle(
                        color: Colors.pink.withOpacity(.8), fontWeight: FontWeight.w600, fontSize: 16
                      ),))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
