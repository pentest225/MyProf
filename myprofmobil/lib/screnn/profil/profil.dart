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
    final deviceW = MediaQuery.of(context).size.width;
    return Scaffold(
     appBar: AppBar(
       backgroundColor: fondcolor,
       elevation: 0,
       automaticallyImplyLeading: false,
       leading: IconButton(
         icon: Icon(Icons.arrow_back, color: Colors.black,),
         onPressed: () {
           Navigator.pop(context);
         },
       ),
       centerTitle: true,
       title: Text(
         'Mon Compte',
         style: TextStyle(
           color: Colors.black,
             fontSize: 25,
             fontWeight: FontWeight.bold,
             fontFamily: 'BAARS'),
       ),
     ),
      body: Container(
        alignment: Alignment.center,
        width: deviceW ,
        color: fondcolor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            //AppBar

            Container(
              margin: EdgeInsets.only(top: 10),
              alignment: Alignment.center,
              height: deviceHeight * .85,
              child: ListView(
                children: <Widget>[
                  Container(
                    alignment: Alignment.center,
                    child: Wrap(
                      children: <Widget>[
                        ProfilCard(Icons.book,"Informations",ProfilInformations.routeName),
                        ProfilCard(Icons.location_on,"Adresse",ProfilAdresse.routeName),
                        ProfilCard(Icons.photo_camera,"Photo de profil",ProfilPhoto.routeName),
                        ProfilCard(Icons.school,"Diplome",ProfilDiplome.routeName),
                        ProfilCard(Icons.person,"Identité",ProfilIdentite.routeName),
                        ProfilCard(Icons.lock,"Mot de passe",ProfilPassword.routeName),
                        ProfilCard(Icons.notifications_active,"Notifications",ProfilNotification.routeName),
                        ProfilCard(Icons.delete_sweep,"Suppression",ProfilSuppresion.routeName),
                      ],
                    ),
                  ),

                ],
              ),
            ),

           ],
        ),
      ),
    );
  }
}
