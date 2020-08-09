import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:myprofmobil/pages/filtrePage.dart';
import 'package:myprofmobil/pages/interface1.dart';
import '../outils/myStyle.dart';
import '../widgets/profWidget.dart';

//PAGE POUR LISTER LES PROFS D'UNE MATIERRE
class AllProf extends StatelessWidget {
  static const routeName = "AllProff";
  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    final appBarHeight = deviceHeight / 10 + 10;
    final bodyHeight = deviceHeight - appBarHeight;

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
                      Icon(
                        Icons.search,
                        color: Colors.white,
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
                                      bottomRight:
                                          const Radius.circular(50.0))),
                              child: RichText(
                                text: TextSpan(
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: 'Environ ',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    TextSpan(
                                        text: '245 professeurs de\n',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    TextSpan(
                                        text: "informatique \n",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                            backgroundColor: themeColor)),
                                    TextSpan(text: "pres de chéz vous  ."),
                                  ],
                                ),
                              ))
                        ],
                      ),
                    ),
                    Positioned(
                      top: 20,
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        height: bodyHeight,
                        padding: EdgeInsets.only(bottom: 10),
                        color: Colors.transparent,
                        child: ListView(
                          children: <Widget>[
                            InkWell(
                              onTap: () {
                                
                              },
                              child: Container(
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                        padding: EdgeInsets.only(top: 55),
                                        child: ProfWidget()),
                                    Container(
                                        padding: EdgeInsets.only(bottom: 55),
                                        child: ProfWidget())
                                  ],
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                
                              },
                              child: Container(
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                        padding: EdgeInsets.only(top: 55),
                                        child: ProfWidget()),
                                    Container(
                                        padding: EdgeInsets.only(bottom: 55),
                                        child: ProfWidget())
                                  ],
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                
                              },
                              child: Container(
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                        padding: EdgeInsets.only(top: 55),
                                        child: ProfWidget()),
                                    Container(
                                        padding: EdgeInsets.only(bottom: 55),
                                        child: ProfWidget())
                                  ],
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                
                              },
                              child: Container(
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                        padding: EdgeInsets.only(top: 55),
                                        child: ProfWidget()),
                                    Container(
                                        padding: EdgeInsets.only(bottom: 55),
                                        child: ProfWidget())
                                  ],
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                
                              },
                              child: Container(
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                        padding: EdgeInsets.only(top: 55),
                                        child: ProfWidget()),
                                    Container(
                                        padding: EdgeInsets.only(bottom: 55),
                                        child: ProfWidget())
                                  ],
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                
                              },
                              child: Container(
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                        padding: EdgeInsets.only(top: 55),
                                        child: ProfWidget()),
                                    Container(
                                        padding: EdgeInsets.only(bottom: 55),
                                        child: ProfWidget())
                                  ],
                                ),
                              ),
                            ),
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
      floatingActionButton: FloatingActionButton(
        backgroundColor: themeColor,
        child: Icon(
          Icons.filter,
          color: Colors.white,
        ),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => FiltrePage()));
        },
      ),
    );
  }
}
