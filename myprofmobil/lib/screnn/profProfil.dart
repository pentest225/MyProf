import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myprofmobil/pages/filtrePage.dart';
import 'package:myprofmobil/pages/interface1.dart';
import 'package:myprofmobil/screnn/contactPage.dart';
import 'package:myprofmobil/widgets/profWidget.dart';
import '../outils/myStyle.dart';

//PAGE DE DETAILLE D'UNE ANONCE PRESENTATIONS DU PROF DE CES MATIERRE ET TOUTE INFO SUR SON ANNONCE
class ProfProfil extends StatelessWidget {
  static const routeName = "profProfil";
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    final appBarHeight = deviceHeight / 10 + 10;
    final bodyHeight = deviceHeight - appBarHeight;
    final firstCardHeight = bodyHeight * .35;
    final imageDecalage = appBarHeight;
    final photoHeight = deviceWidth * .25;
    final lefAndReightSpace = ((deviceWidth - 20) - photoHeight) / 2;
    return Scaffold(
      body: Container(
        height: deviceHeight,
        decoration: BoxDecoration(
          color: fondcolor,
          image: DecorationImage(
           image: ExactAssetImage(backImage), fit: BoxFit.cover),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              // I Container de la AppBarr
              Container(
                height: appBarHeight,
                color: themeColor,
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  margin: EdgeInsets.only(top: appBarHeight * .5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'MyProfs',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'BAARS'),
                      )
                    ],
                  ),
                ),
              ),
              // II Container Body
              Container(
                height: bodyHeight,
                // II -1 Section Titre du stack
                child: Stack(
                  overflow: Overflow.visible,
                  children: <Widget>[
                    // BackGround du stack
                    Container(
                      height: bodyHeight,
                      child: Column(
                        children: <Widget>[
                          Container(
                            height: bodyHeight * .3,
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 30),
                            width: deviceWidth,
                            decoration: BoxDecoration(
                                // color: themeColor.withOpacity(.5),
                                borderRadius: BorderRadius.only(
                                    bottomLeft: const Radius.circular(50.0),
                                    bottomRight: const Radius.circular(50.0))),
                          )
                        ],
                      ),
                    ),
                    Positioned(
                      top: 0,
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        height: bodyHeight,
                        margin: EdgeInsets.only(bottom:15),
                        padding:
                            EdgeInsets.only(bottom: 10, left: 10, right: 10),
                        color: Colors.transparent,
                        child: ListView(
                          children: <Widget>[
                            //First Caontainer
                            Container(
                              margin: EdgeInsetsDirectional.only(
                                  top: photoHeight / 2.5),
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                elevation: 0,
                                child: Container(
                                  height: firstCardHeight,
                                  child: Stack(
                                    overflow: Overflow.visible,
                                    children: <Widget>[
                                      Container(
                                        height: bodyHeight * 45,
                                        margin: EdgeInsets.only(
                                            top: photoHeight / 2 + 5),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: <Widget>[
                                            Center(
                                              child: Text(
                                                "Franck N'guessan",
                                                style: h1,
                                              ),
                                            ),
                                            Center(
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Icon(
                                                    Icons.place,
                                                    color: accanceColor,
                                                  ),
                                                  Text("Cocody Gescocy")
                                                ],
                                              ),
                                            ),
                                            //Price Row
                                            Center(
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: <Widget>[
                                                  Container(
                                                    child: RichText(
                                                      text: TextSpan(
                                                        children: <TextSpan>[
                                                          TextSpan(
                                                              text: '4000 fr/',
                                                              style: TextStyle(
                                                                  color:
                                                                      themeColor,
                                                                  fontSize: 25,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400)),
                                                          TextSpan(
                                                              text: 'h ',
                                                              style: TextStyle(
                                                                  color:
                                                                      themeColor,
                                                                  fontSize:
                                                                      10)),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 100,
                                                    height: 25,
                                                    alignment: Alignment.center,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              15),
                                                      gradient: LinearGradient(
                                                          begin: Alignment
                                                              .centerLeft,
                                                          end: Alignment
                                                              .bottomRight,
                                                          colors: [
                                                            themeColor,
                                                            Color.fromRGBO(254,
                                                                229, 233, 1)
                                                          ]),
                                                    ),
                                                    child: Text(
                                                      "Flutter",
                                                      style: TextStyle(
                                                          color: Colors.black),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),

                                            // Nombres d'etoilles
                                            Container(
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Container(
                                                    child: Row(
                                                      children: <Widget>[
                                                        Icon(
                                                          Icons.star,
                                                          color: themeColor,
                                                          size: 24,
                                                        ),
                                                        Icon(
                                                          Icons.star,
                                                          color: themeColor,
                                                          size: 24,
                                                        ),
                                                        Icon(
                                                          Icons.star,
                                                          color: themeColor,
                                                          size: 24,
                                                        ),
                                                        Icon(
                                                          Icons.star,
                                                          color: themeColor,
                                                          size: 24,
                                                        ),
                                                        Icon(
                                                          Icons.star,
                                                          color: themeColor,
                                                          size: 24,
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                  Container(
                                                    child: Row(
                                                      children: <Widget>[
                                                        Text(
                                                          "93 ",
                                                          style: TextStyle(
                                                              color:
                                                                  accanceColor,
                                                              fontSize: 14),
                                                        ),
                                                        Text(
                                                          "avis",
                                                          style: TextStyle(
                                                              color:
                                                                  accanceColor,
                                                              fontSize: 14),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Positioned(
                                        top: -photoHeight / 2,
                                        left: lefAndReightSpace,
                                        right: lefAndReightSpace,
                                        bottom:
                                            firstCardHeight - (photoHeight / 2),
                                        child: Container(
                                          child: Container(
                                              width: photoHeight,
                                              height: photoHeight,
                                              decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  image: DecorationImage(
                                                      fit: BoxFit.cover,
                                                      image: AssetImage(
                                                          "assets/images/man.jpg")))),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            //Secande Container
                            Row(
                              children: <Widget>[
                                Card(
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Container(
                                    height: 80,
                                    width: deviceWidth / 2 - 20,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Icon(
                                          Icons.done,
                                          size: 45,
                                          color: accanceColor,
                                        ),
                                        Text(
                                          "Diplome Vérifié",
                                          style: h2,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Card(
                                  elevation: 0,
                                  // color: accanceColor,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Container(
                                    height: 80,
                                    width: deviceWidth / 2 - 20,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        RichText(
                                          text: TextSpan(
                                            children: <TextSpan>[
                                              TextSpan(
                                                  text: '2',
                                                  style: TextStyle(
                                                      color: accanceColor,
                                                      fontSize: 25,
                                                      fontWeight:
                                                          FontWeight.w400)),
                                              TextSpan(
                                                  text: 'h ',
                                                  style: TextStyle(
                                                      color: accanceColor,
                                                      fontSize: 18)),
                                            ],
                                          ),
                                        ),
                                        Text(
                                          "Temps de reponses",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w400,
                                              fontFamily: 'BAARS'),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                            // Troisiemme Container
                            Card(
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              child: Container(
                                // height: bodyHeight * .5,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 20),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10),
                                        child: Text(
                                          "Devenir Un prod en dévéloppement Mobil",
                                          style: TextStyle(
                                              fontSize: 24,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'BAARS'),
                                        )),
                                    Container(
                                        padding: EdgeInsets.all(10),
                                        child: Text(
                                          "Je propose \n1) Des cours privés de Piano pour enfants, adultes, tous âges et tous niveaux, basé sur un suivi musical personnalisé : Découverte - Apprentissage méthodique - Perfectionnement - Concert de fin d'année.\n2) Coaching de comédiens et d'acteurs (piano)\nJ'ai par exemple été le professeur de Piano du comédien Romain Cottard dans la préparation de la pièce de Yasmina Reza, 'Comment vous racontez la partie'.",
                                          style: TextStyle(
                                              color: Colors.blueGrey,
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500),
                                        ))
                                  ],
                                ),
                              ),
                            ),
                            //Quatrieme Card
                            Card(
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              child: Container(
                                // height: bodyHeight * .5,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 20),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10),
                                        child: Text(
                                          "Mon Parcour",
                                          style: TextStyle(
                                              fontSize: 24,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'BAARS'),
                                        )),
                                    Container(
                                        padding: EdgeInsets.all(10),
                                        child: Text(
                                          "J’ai d’abord enseigné en école de Musique avant de proposer depuis plusieurs années des cours particuliers qui me permettent d’offrir un enseignement original basé sur le plaisir de jouer et la passion du Piano.Je prépare également les élèves qui le souhaitent aux concours nationaux et internationaux.",
                                          style: TextStyle(
                                              color: Colors.blueGrey,
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500),
                                        ))
                                  ],
                                ),
                              ),
                            ),
                            //Quatrieme Card
                            Card(
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              child: Container(
                                // height: bodyHeight * .5,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 20),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10),
                                            margin: EdgeInsets.only(bottom: 15),
                                        child: Text(
                                          "Cours proposés ",
                                          style: TextStyle(
                                              fontSize: 24,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'BAARS'),
                                        )),
                                    Row(
                                      children: <Widget>[
                                        Card(
                                          elevation: 0,
                                          color: Colors.grey.withOpacity(.3),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: Container(
                                            height: 80,
                                            width: deviceWidth / 2 - 40,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: <Widget>[
                                               Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                          color: Colors.white70,
                                          shape: BoxShape.circle
                                      ),
                                      child:  Icon(Icons.account_circle, size: 30, color: themeColor,),
                                    ),
                                                Text(
                                                  "A Domicile ",
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontFamily: 'BAARS'),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                         Card(
                                          elevation: 0,
                                          color: Colors.grey.withOpacity(.3),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: Container(
                                            height: 80,
                                            width: deviceWidth / 2 - 40,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: <Widget>[
                                               Icon(Icons.camera_alt),
                                                Text(
                                                  "Par Webcam ",
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontFamily: 'BAARS'),
                                                )
                                              ],
                                            ),
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            )
                            //Siessieme Card

                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => ContactPage()));
        },
        child: Container(
          height: 40,
          width: 200,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: themeColor.withOpacity(.7),
            border: Border.all(color: themeColor, width: 1),
            borderRadius: BorderRadius.circular(50),
          ),
          child: Text(
            'Réservez',
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
