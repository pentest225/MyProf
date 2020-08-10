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
            colorFilter: ColorFilter.mode(
                Colors.black87.withOpacity(0.6), BlendMode.darken),

            //colorFilter: ColorFilter.mode(Colors.white60, BlendMode.screen)
          )),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 10, right: 10),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    IconButton(
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: themeColor,
                        ),
                        onPressed: () => Navigator.of(context).pop()),
                    Container(
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("My Prof",
                              style: TextStyle(
                                  color: accanceColor,
                                  fontSize: 18,
                                  fontFamily: 'BAARS',
                                  fontWeight: FontWeight.bold)),
                          Text('Annonce',
                              style: TextStyle(
                                  color: themeColor,
                                  fontSize: 22,
                                  fontFamily: 'BAARS',
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                    IconWidget
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
