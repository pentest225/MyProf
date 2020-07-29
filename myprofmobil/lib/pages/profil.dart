import 'package:flutter/material.dart';
import 'package:myprofmobil/outils/myStyle.dart';
import 'package:myprofmobil/screnn/dash_user.dart';
import 'package:myprofmobil/widgets/myDrower.dart';

import 'profil_adresse.dart';
import 'profil_diplome.dart';
import 'profil_identite.dart';
import 'profil_information.dart';
import 'profil_notification.dart';
import 'profil_password.dart';
import 'profil_photo.dart';
import 'profil_suppresion.dart';

//PAGE PROFIL UTILISATEUR 
class ProfilPage extends StatefulWidget {

  static const routeName = 'profil';

  @override
  _ProfilPageState createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrower(),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: fondcolor,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.arrow_back, color: themeColor, size: 30,)
                    ),
                    SizedBox(width: 60,),
                    Text('Mon Compte', style: TextStyle(
                      fontSize: 25, fontWeight: FontWeight.bold, fontFamily: 'BAARS'
                    ),),

                  ],
                ),
              ),
              SizedBox(height: 20,),
              Container(
                child: Wrap(
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilInformations()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 150,
                          width: 160,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(Icons.book, color: themeColor, size: 50,),
                              SizedBox(height: 10,),
                              Container(
                                margin: EdgeInsets.only(left: 25, right: 25),
                                child: Text('Informations générales', style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold, fontFamily: 'BAARS'
                                ),),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () => Navigator.of(context).pushNamed(ProfilAdresse.routeName),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 150,
                          width: 160,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(Icons.location_on, color: themeColor, size: 50,),
                              SizedBox(height: 10,),
                              Container(
                                margin: EdgeInsets.only(left: 25, right: 25),
                                child: Text('Adresse', style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold, fontFamily: 'BAARS'
                                ),),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilPhoto()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 150,
                          width: 160,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(Icons.photo_camera, color: themeColor, size: 50,),
                              SizedBox(height: 10,),
                              Container(
                                margin: EdgeInsets.only(left: 25, right: 25),
                                child: Text('Photo de profil', style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold, fontFamily: 'BAARS'
                                ),),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilDiplome()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 150,
                          width: 160,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(Icons.school, color: themeColor, size: 50,),
                              SizedBox(height: 10,),
                              Container(
                                margin: EdgeInsets.only(left: 25, right: 25),
                                child: Text('Diplome', style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold, fontFamily: 'BAARS'
                                ),),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilIdentite()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 150,
                          width: 160,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(Icons.person, color: themeColor, size: 50,),
                              SizedBox(height: 10,),
                              Container(
                                margin: EdgeInsets.only(left: 25, right: 25),
                                child: Text('Identité', style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold, fontFamily: 'BAARS'
                                ),),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilPassword()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 150,
                          width: 160,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(Icons.lock, color: themeColor, size: 50,),
                              SizedBox(height: 10,),
                              Container(
                                margin: EdgeInsets.only(left: 25, right: 25),
                                child: Text('Mot de passe', style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold, fontFamily: 'BAARS'
                                ),),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilNotification()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 150,
                          width: 160,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(Icons.notifications_active, color: themeColor, size: 50,),
                              SizedBox(height: 10,),
                              Container(
                                margin: EdgeInsets.only(left: 25, right: 25),
                                child: Text('Notifications', style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold, fontFamily: 'BAARS'
                                ),),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilSuppresion()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 150,
                          width: 160,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(Icons.delete_sweep, color: themeColor, size: 50,),
                              SizedBox(height: 10,),
                              Container(
                                margin: EdgeInsets.only(left: 25, right: 25),
                                child: Text('Suppression du compte', style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold, fontFamily: 'BAARS',
                                ),),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40,),
            ],
          ),
        ),
      ),
    );
  }
}
