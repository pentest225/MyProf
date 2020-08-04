import 'package:flutter/material.dart';
import 'package:myprofmobil/outils/myStyle.dart';
import 'package:myprofmobil/screnn/dash_user.dart';
import 'package:myprofmobil/widgets/myDrower.dart';
import 'package:myprofmobil/widgets/profilCard.dart';
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
    final deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      drawer: MyDrower(),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: fondcolor,
        child: Column(
          children: <Widget>[
            
            //AppBar
            Container(
              height: deviceHeight * .1,
              // color: Colors.teal,
              padding: EdgeInsets.symmetric(horizontal: 20),
              margin: EdgeInsets.only(top: 20),
              child: Row(
                children: <Widget>[
                  InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back,
                        color: themeColor,
                        size: 30,
                      )),
                  SizedBox(
                    width: 60,
                  ),
                  Text(
                    'Mon Compte',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'BAARS'),
                  ),
                ],
              ),
            ),
         
            SingleChildScrollView(
              child: Container(
                height: deviceHeight * .85,
                child: ListView(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Wrap(
                        children: <Widget>[
                          ProfilCard(Icons.book,"Informations",ProfilInformations.routeName),
                          ProfilCard(Icons.location_on,"Adresse",ProfilAdresse.routeName),
                          ProfilCard(Icons.photo_camera,"Photo de profil",ProfilPhoto.routeName),
                          ProfilCard(Icons.school,"Diplome",ProfilDiplome.routeName),
                          ProfilCard(Icons.person,"Identité",ProfilIdentite.routeName),
                          ProfilCard(Icons.lock,"Mot de passe",ProfilPassword.routeName),
                          ProfilCard(Icons.notifications_active,"Notifications",ProfilNotification.routeName),
                          ProfilCard(Icons.delete_sweep,"Suppression du compte",ProfilSuppresion.routeName),
                         ],
                      ),
                    ),
                  
                  ],
                ),
              ),
            )
          
           ],
        ),
      ),
    );
  }
}
