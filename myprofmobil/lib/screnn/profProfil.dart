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
                color: themeColor.withOpacity(.5),
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
                                color: themeColor.withOpacity(.5),
                                borderRadius: BorderRadius.only(
                                    bottomLeft: const Radius.circular(50.0),
                                    bottomRight: const Radius.circular(50.0))),
                          )
                        ],
                      ),
                    ),
                    Positioned(
                      top: 20,
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        height: bodyHeight ,
                        // margin: EdgeInsets.only(top: imageDecalage),
                        padding:
                            EdgeInsets.only(bottom: 10, left: 10, right: 10),
                        color: Colors.transparent,
                        child: ListView(
                          children: <Widget>[
                            //First Caontainer
                            Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              elevation: 5,
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
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                                                  MainAxisAlignment.spaceAround,
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
                                                                fontSize: 10)),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  width: 100,
                                                  height: 25,
                                                  alignment: Alignment.center,
                                                  decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(15),
                                                    gradient: LinearGradient(
                                                        begin: Alignment
                                                            .centerLeft,
                                                        end: Alignment
                                                            .bottomRight,
                                                        colors: [
                                                          themeColor,
                                                          Color.fromRGBO(
                                                              254, 229, 233, 1)
                                                        ]),
                                                      
                                                  ),
                                                  child: Text("Flutter",style: TextStyle(color: Colors.grey),),
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
                                                            color: accanceColor,
                                                            fontSize: 14),
                                                      ),
                                                      Text(
                                                        "avis",
                                                        style: TextStyle(
                                                            color: accanceColor,
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
                                                    fit: BoxFit.fill,
                                                    image: AssetImage(
                                                        "assets/images/man.jpg")))),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )
                            
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
      floatingActionButton: Container(
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
    );
  }
}
