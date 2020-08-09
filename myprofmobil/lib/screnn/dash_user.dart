import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:myprofmobil/pages/profil.dart';
import 'package:myprofmobil/screnn/annonceList.dart';
import 'package:myprofmobil/screnn/calendarTask1.dart';
import 'package:myprofmobil/screnn/calendarUser.dart';
import 'package:myprofmobil/screnn/demande.dart';
import 'package:myprofmobil/screnn/demandeList.dart';
import 'package:myprofmobil/widgets/dashCard.dart';
import '../outils/myStyle.dart';
import 'feature_annonce/main_annonce.dart';

//NOUVEAUX DASHBORD BY PATRICK
class UserDash extends StatelessWidget {
  static const routeName = "UserDash";
  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    final appBarHeight = deviceHeight * .1 + 10;
    final bodyHeight = deviceHeight - appBarHeight;
    final roundedSectionHeight = bodyHeight - bodyHeight * .25;
    final demandeCardWidth = deviceWidth - 20;

    return Scaffold(
      backgroundColor: Colors.black26,
      body: Container(
        height: deviceHeight,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: ExactAssetImage(backImage), fit: BoxFit.cover),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              // I=> MY APPBAR
              Container(
                height: appBarHeight,
                // color: Colors.grey.withOpacity(.5),
                child: Container(
                  margin: EdgeInsets.only(top: deviceHeight * .055),
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  // color: Colors.grey.withOpacity(.5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: themeColor,
                        ),
                        onPressed: () => Navigator.of(context).pop(),
                      ),
                      Row(
                        children: <Widget>[
                          InkWell(
                            onTap: () {
                              Navigator.of(context)
                                  .pushNamed(MainAnnonce.routeName);
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: themeColor, width: .5),
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white),
                              child: Text(
                                "Ajouter une annonce ",
                                style: TextStyle(fontWeight: FontWeight.w100),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          IconWidget
                        ],
                      )
                    ],
                  ),
                ),
              ),
              // II =>MY BODY
              Container(
                height: bodyHeight,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    //Image Section
                    Container(
                      height: bodyHeight * .15,
                      child: Container(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            alignment: Alignment.center,
                            width: deviceWidth * .3,
                            child: Container(
                              height: bodyHeight * .25 - 100,
                              width: bodyHeight * .25 - 100,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: AssetImage("assets/images/man.jpg"),
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
                          Container(
                            width: deviceWidth * .7,
                            height: bodyHeight * .25 - 80,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                Text(
                                  "Dagouaga Patrick ben ",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      fontStyle: FontStyle.normal),
                                ),
                                Text(
                                  "Abidjan Cocody Rue vallon 0045 ",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w300,
                                      fontStyle: FontStyle.normal),
                                )
                              ],
                            ),
                          )
                        ],
                      )),
                    ),
                    //Rounded Section
                    Container(
                      //height: roundedSectionHeight,
                      decoration: BoxDecoration(
                          color: themeColor.withOpacity(.9),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40),
                              topRight: Radius.circular(40))),
                      child: Column(
                        children: <Widget>[
                          // SECTION COLOR THEME
                          Container(
                            height: roundedSectionHeight * .25,
                            color: Colors.transparent,
                            margin: EdgeInsets.symmetric(horizontal: 25),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                Container(
                                  height: deviceWidth * .25,
                                  width: deviceWidth * .25,
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white.withOpacity(.3),
                                  ),
                                  child: Column(
                                    children: <Widget>[
                                      Icon(
                                        Icons.done_all,
                                        color: Colors.green,
                                        size: 35,
                                      ),
                                      Text(
                                        "Diplôme ",
                                        style: TextStyle(fontSize: 10),
                                      ),
                                      Text(
                                        "Verifié ",
                                        style: TextStyle(fontSize: 8),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  height: deviceWidth * .25,
                                  width: deviceWidth * .25,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white.withOpacity(.3),
                                  ),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Text(
                                        "15",
                                        style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                      Text(
                                        "Nombre d'avis ",
                                        style: TextStyle(fontSize: 10),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: deviceWidth * .25,
                                  width: deviceWidth * .25,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white.withOpacity(.3),
                                  ),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Text(
                                        "17",
                                        style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.green),
                                      ),
                                      Text(
                                        "Recomendations ",
                                        style: TextStyle(fontSize: 10),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          // WHITE BOTTOM SECTION
                          Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 20),
                              decoration: BoxDecoration(
                                  color: fondcolor,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(30),
                                      topRight: Radius.circular(30))),
                              child: Container(
                                margin: EdgeInsets.only(top: 15),
                                width: deviceWidth,
                                child: Wrap(
                                  children: <Widget>[
                                    DashCard(
                                        "Mes Annonces",
                                        Icons.card_membership,
                                        AnnonceListe.routeName),
                                    DashCard("Mes Demandes ", Icons.school,
                                        DemandeListe.routeName),
                                    DashCard("Parrametres ", Icons.settings,
                                        ProfilPage.routeName),
                                    DashCard("Agenda ", Icons.calendar_today,
                                        Calendar.routeName),
                                  ],
                                ),
                              ))
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
