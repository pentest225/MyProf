import 'package:flutter/material.dart';
import 'package:myprofmobil/outils/myStyle.dart';

import '../styles.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Align(
      alignment: Alignment.topCenter,
      child: Scaffold(
        body: Container(
          height: screenSize.height * .25,
          width: screenSize.width,
          decoration: BoxDecoration(
              image: DecorationImage(
                  //image: AssetImage('assets/images/cho.png'),
                  image: AssetImage('assets/images/ecole.jpg'),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(Colors.black87.withOpacity(0.6), BlendMode.darken),

                  //colorFilter: ColorFilter.mode(Colors.white60, BlendMode.screen)
                  )
                  ),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text('MyProf'.toUpperCase(), style: Styles.appTitle1),
                  Text('Annonce', style: TextStyle(
                    color: themeColor,  fontSize: 32, fontFamily: 'BAARS', fontWeight: FontWeight.bold
                  )),
                 // Text('Annonce', style: Styles.appTitle2),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}