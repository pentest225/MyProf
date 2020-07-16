import 'dart:math';

import 'package:flutter/material.dart';
import 'package:myprofmobil/outils/myStyle.dart';
import 'package:myprofmobil/pages/categorie.dart';
import 'package:myprofmobil/pages/interface1.dart';
import 'package:myprofmobil/screnn/Inscription.dart';
import 'package:myprofmobil/screnn/connexion.dart';
import 'package:myprofmobil/screnn/dash_user.dart';
import 'package:myprofmobil/screnn/dashboard.dart';
import 'package:myprofmobil/screnn/demande.dart';
import 'package:myprofmobil/screnn/homeScreen2.dart';
import 'package:myprofmobil/screnn/home_screen.dart';
import 'package:myprofmobil/screnn/progress.dart';
import 'package:myprofmobil/screnn/regis.dart';
import 'package:myprofmobil/screnn/register.dart';
import 'package:myprofmobil/screnn/sync.dart';
import 'package:myprofmobil/screnn/verify.dart';
import 'package:myprofmobil/widgets/drowerContainer.dart';

class MyDrower extends StatelessWidget {
  const MyDrower({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    return Drawer(
      child: Container(
        height: deviceHeight,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView(
            children: [
              //SECTION DU HAUT
              Container(
                height: deviceHeight * .25,
                // color: Colors.red,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'MyProf',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Transform.rotate(
                      angle: -180 / 15,
                      child: IconButton(
                        icon: Icon(
                          Icons.school,
                          color: themeColor,
                          size: 35,
                        ),
                        onPressed: null,
                      ),
                    ),
                  ],
                ),
              ),
              //SECTION NAVIGATION
              Container(
                alignment: Alignment.topLeft,
                height: deviceHeight * .35,
                // color: Colors.blue,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    DrowerContainer(Icons.dashboard, "Dasbord",
                        UserDash.routeName),
                    DrowerContainer(Icons.perm_contact_calendar, "Inscription",
                        Regis.routeName),
                    DrowerContainer(Icons.perm_contact_calendar, "Connexion",
                        CategoriePage.routeName),
                    DrowerContainer(Icons.add_location, "Ajouté une annonce ",
                        DemandePage.routeName),
                  ],
                ),
              ),
              Container(
                height: deviceHeight * .3,
                // color: Colors.purple,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                      decoration: BoxDecoration(
                          border: Border(
                              top: BorderSide(color: themeColor, width: 1),
                              bottom: BorderSide(color: themeColor, width: 1))),
                      child: Row(
                        children: [
                          Icon(
                            Icons.question_answer,
                            color: themeColor,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen2()));
                            },
                            child: Text(
                              "Aide",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w200,
                                  color: themeColor),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                      decoration: BoxDecoration(
                          border: Border(
                              top: BorderSide(color: themeColor, width: 1),
                              bottom: BorderSide(color: themeColor, width: 1))),
                      child: Row(
                        children: [
                          Icon(
                            Icons.exit_to_app,
                            color: themeColor,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => InterfaceOne()));
                            },
                            child: Text(
                              "Logout",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w200,
                                  color: themeColor),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//  Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 Text(
//                   'MyProf',
//                   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
//                 ),
//                 SizedBox(
//                   width: 5,
//                 ),
//                 Icon(Icons.school, size: 40, color: themeColor),
//               ],
//             ),
//             SizedBox(
//               height: 50,
//             ),
//             Container(
//               width: 2000,
//               color: Colors.grey.withOpacity(0.1),
//               height: 2,
//             ),
//             SizedBox(
//               height: 15,
//             ),
//             Row(
//               children: <Widget>[
//                 Icon(
//                   Icons.home,
//                   color: themeColor,
//                 ),
//                 SizedBox(
//                   width: 5,
//                 ),
//                 InkWell(
//                   onTap: () {
//                     // Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
//                   },
//                   child: Text(
//                     'Page Home',
//                     style: TextStyle(
//                         color: Colors.black87,
//                         fontSize: 22,
//                         fontFamily: 'BAARS',
//                         fontWeight: FontWeight.w600),
//                   ),
//                 )
//               ],
//             ),
//             SizedBox(
//               height: 15,
//             ),
//             Container(
//               width: 2000,
//               color: Colors.grey.withOpacity(0.1),
//               height: 2,
//             ),
//             SizedBox(
//               height: 15,
//             ),
//             Row(
//               children: <Widget>[
//                 Icon(
//                   Icons.people,
//                   color: themeColor,
//                 ),
//                 SizedBox(
//                   width: 5,
//                 ),
//                 InkWell(
//                   onTap: () {
//                     Navigator.push(context,
//                         MaterialPageRoute(builder: (context) => Inscription()));
//                   },
//                   child: Text(
//                     'Inscription',
//                     style: TextStyle(
//                         color: Colors.black87,
//                         fontSize: 22,
//                         fontFamily: 'BAARS',
//                         fontWeight: FontWeight.w600),
//                   ),
//                 )
//               ],
//             ),
//             SizedBox(
//               height: 15,
//             ),
//             Container(
//               width: 2000,
//               color: Colors.grey.withOpacity(0.1),
//               height: 2,
//             ),
//             SizedBox(
//               height: 15,
//             ),
//             Row(
//               children: <Widget>[
//                 Icon(
//                   Icons.person,
//                   color: themeColor,
//                 ),
//                 SizedBox(
//                   width: 5,
//                 ),
//                 InkWell(
//                   onTap: () {
//                     Navigator.push(context,
//                         MaterialPageRoute(builder: (context) => Connexion()));
//                   },
//                   child: Text(
//                     'Connexion',
//                     style: TextStyle(
//                         color: Colors.black87,
//                         fontSize: 22,
//                         fontFamily: 'BAARS',
//                         fontWeight: FontWeight.w600),
//                   ),
//                 )
//               ],
//             ),
//             SizedBox(
//               height: 15,
//             ),
//             Container(
//               width: 2000,
//               color: Colors.grey.withOpacity(0.1),
//               height: 2,
//             ),
//             SizedBox(
//               height: 15,
//             ),
//             Row(
//               children: <Widget>[
//                 Icon(
//                   Icons.help,
//                   color: themeColor,
//                 ),
//                 SizedBox(
//                   width: 5,
//                 ),
//                 Text(
//                   'Aide',
//                   style: TextStyle(
//                       color: Colors.black87,
//                       fontSize: 22,
//                       fontFamily: 'BAARS',
//                       fontWeight: FontWeight.w600),
//                 )
//               ],
//             ),
//             SizedBox(
//               height: 15,
//             ),
//             Container(
//               width: 2000,
//               color: Colors.grey.withOpacity(0.1),
//               height: 2,
//             ),
//             SizedBox(
//               height: 15,
//             ),
//             Row(
//               children: <Widget>[
//                 Icon(
//                   Icons.library_books,
//                   color: themeColor,
//                 ),
//                 SizedBox(
//                   width: 5,
//                 ),
//                 InkWell(
//                   onTap: () {
//                     Navigator.push(context,
//                         MaterialPageRoute(builder: (context) => DemandePage()));
//                   },
//                   child: Text(
//                     'Donner des cours',
//                     style: TextStyle(
//                         color: Colors.black87,
//                         fontSize: 22,
//                         fontFamily: 'BAARS',
//                         fontWeight: FontWeight.w600),
//                   ),
//                 )
//               ],
//             ),
//             SizedBox(
//               height: 15,
//             ),
//             Container(
//               width: 2000,
//               color: Colors.grey.withOpacity(0.1),
//               height: 2,
//             ),
//             SizedBox(
//               height: 15,
//             ),
//             Row(
//               children: <Widget>[
//                 Icon(
//                   Icons.library_books,
//                   color: themeColor,
//                 ),
//                 SizedBox(
//                   width: 5,
//                 ),
//                 InkWell(
//                   onTap: () {
//                     Navigator.push(context,
//                         MaterialPageRoute(builder: (context) => Dashboard()));
//                   },
//                   child: Text(
//                     'Dashboard',
//                     style: TextStyle(
//                         color: Colors.black87,
//                         fontSize: 22,
//                         fontFamily: 'BAARS',
//                         fontWeight: FontWeight.w600),
//                   ),
//                 )
//               ],
//             ),
//             SizedBox(
//               height: 15,
//             ),
//             Container(
//               width: 2000,
//               color: Colors.grey.withOpacity(0.1),
//               height: 2,
//             ),
//             SizedBox(
//               height: 15,
//             ),
