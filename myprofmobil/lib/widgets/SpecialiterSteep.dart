import 'package:flutter/material.dart';
import 'package:myprofmobil/outils/myStyle.dart';

import 'multiSelectChip.dart';

class SpecialiteSped extends StatefulWidget {
  @override
  _SpecialiteSpedState createState() => _SpecialiteSpedState();
}

class _SpecialiteSpedState extends State<SpecialiteSped> {
  List<String> returnList;

  List<String> competences = [
    'JavaScript',
    'Python',
    'Html',
    'Intelligence artificielle',
    'Css',
    'PostgreSql',
    'Visual basic',
    'Flutter',
    'Golang',
    'PHP',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: fondcolor,
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Veuillez clicker sur vos compétences (5maximums)...",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.black54,
                fontSize: 18,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w700),
          ),
          MultiSelectedChip(
            competences,
            myReturnList: (myList) {
              setState(() {
                returnList = myList;
              });
            },
          ),
          // SizedBox(
          //   height: 100,
          // ),
        ],
      )),
    );
  }
}
