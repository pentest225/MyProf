import 'dart:math';
import 'package:myprofmobil/screnn/connexion.dart';

import '../widgets/drowerWidgets/route.dart';
import 'package:flutter/material.dart';
import 'package:myprofmobil/outils/myStyle.dart';

import 'package:myprofmobil/pages/profil.dart';

import 'package:myprofmobil/screnn/dash_user.dart';

import 'package:myprofmobil/screnn/demandeList.dart';
import 'package:myprofmobil/screnn/feature_annonce/main_annonce.dart';

class MyDrower extends StatelessWidget {
  const MyDrower({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;

    Widget customRow() {
      return Container(
        margin: EdgeInsets.only(top: 18),
        color: Colors.black45.withOpacity(0.1),
        width: deviceWidth / 1.9,
        height: 2,
      );
    }

    print(deviceWidth * .3);
    return Drawer(
      child: Container(
          color: Colors.transparent,
          child: Row(
            //mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              //LEFT SECTION
              Expanded(
                flex: 2,
                child: InkWell(
                  onTap: () =>
                      Navigator.of(context).pushNamed(MainAnnonce.routeName),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Card(
                            child: Container(
                              height: deviceWidth / 3.5 - 10,
                              width: deviceWidth / 2.5,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0x1a000000),
                                      blurRadius: 10,
                                      spreadRadius: 0,
                                      offset: Offset(0, 10),
                                    )
                                  ]),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    child: Icon(
                                      Icons.school,
                                      color: accanceColor,
                                      size: 60,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Text(
                          'Annonce',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 22,
                              fontFamily: 'BAARS'),
                        ),
                        Container(
                            margin: EdgeInsets.only(
                              top: 15,
                            ),
                            child: Text(
                              '+',
                              style: TextStyle(color: themeColor, fontSize: 40),
                            )),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                height: deviceHeight,
                width: 2,
                color: Colors.black45.withOpacity(0.1),
              ),

              //REIGHT SECTION
              Expanded(
                flex: 3,
                child: Container(
                  color: fondcolor,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      //Image Section Image
                      Container(
                        height: deviceHeight * .3,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              alignment: Alignment.topCenter,
                              child: Container(
                                height: 100,
                                width: 100,
                                decoration: BoxDecoration(
                                    //color: Colors.white,
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                        image: AssetImage(logo),
                                        fit: BoxFit.cover)),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              padding: EdgeInsets.only(left: 15),
                              child: Text(
                                'MyProf',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'BAARS'),
                              ),
                            ),
                            Container(
                                margin: EdgeInsets.only(top: 8),
                                padding: EdgeInsets.only(left: 15),
                                child: Text(
                                  'youss.nan.ci',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black54),
                                )),
                          ],
                        ),
                      ),
                      // Curstom Row
                      customRow(),
                      Container(
                        height: deviceHeight * .15,
                        margin: EdgeInsets.only(top: 20),
                        padding: EdgeInsets.only(left: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            MyRoute(Icons.navigation, "Navigation", "route"),
                            MyRoute(
                                Icons.person, "Profil", ProfilPage.routeName),
                            MyRoute(Icons.add, "Annonce", MainAnnonce.routeName)
                          ],
                        ),
                      ),
                      //Custom rom
                      customRow(),
                      Container(
                        height: deviceHeight * .15,
                        margin: EdgeInsets.only(top: 20),
                        padding: EdgeInsets.only(left: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            MyRoute(Icons.dashboard, "Tableaux de bord",
                                UserDash.routeName),
                            MyRoute(Icons.bookmark_border, "Denamde de coure",
                                DemandeListe.routeName),
                            MyRoute(Icons.system_update_alt, "Déconnexion",
                                Connexion.routeNamed),
                          ],
                        ),
                      ),
                      customRow()
                    ],
                  ),
                ),
              )
            ],
          )),
    );
  }
}
