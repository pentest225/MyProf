import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:myprofmobil/outils/myStyle.dart';
import 'package:myprofmobil/widgets/AnnonceWidget.dart';
import 'package:myprofmobil/widgets/demandeCours.dart';

// PAGE POUR LISTER LES ANNONCES DE L'UTILISATEUR
class AnnonceListe extends StatefulWidget {
  static const routeName = "annonceListe";
  @override
  _AnnonceListeState createState() => _AnnonceListeState();
}

class _AnnonceListeState extends State<AnnonceListe>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;

    final appBarHeight = deviceHeight * .1 + 10;
    final bodyHeight = deviceHeight - appBarHeight;
    return Scaffold(
      body: Container(
        height: deviceHeight,
        decoration: BoxDecoration(
          color: themeColor.withOpacity(.5),
          image: DecorationImage(
              image: ExactAssetImage("assets/images/ecole.jpg"),
              fit: BoxFit.cover),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
          child: Column(
            children: <Widget>[
              // I=> MY APPBAR
              Container(
                height: appBarHeight,
                // color: Colors.grey.withOpacity(.5),
                child: Container(
                  margin: EdgeInsets.only(top: deviceHeight * .045),
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  // color: Colors.grey.withOpacity(.5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.arrow_back_ios),
                        onPressed: () => Navigator.of(context).pop(),
                      ),
                      Text(
                        "Mes Annonces",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: <Widget>[
                          SizedBox(
                            width: 5,
                          ),
                          InkWell(
                            onTap: () => Scaffold.of(context).openDrawer(),
                            child: Container(
                              height: 35,
                              width: 35,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: themeColor, width: 1),
                                  shape: BoxShape.circle,
                                  color: Colors.white),
                              child: Text(
                                "PA",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Container(
                height: bodyHeight,
                child: Column(
                  children: <Widget>[
                    Container(
                      height: bodyHeight * .075,
                    ),
                    Container(
                      height: bodyHeight * .925,
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40),
                              topRight: Radius.circular(40))),
                      child: ListView(
                        children: <Widget>[
                          PageDisc(),
                          PageDisc(),
                          PageDisc(),
                          PageDisc(),
                          PageDisc(),
                          PageDisc(),
                          PageDisc(),
                        ],
                      ),
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
