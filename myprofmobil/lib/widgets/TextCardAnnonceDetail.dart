import 'dart:math';

import 'package:flutter/material.dart';

class TextCardAnnonce extends StatefulWidget {
  String titre;
  String description;
  TextCardAnnonce(this.titre, this.description);
  @override
  _TextCardAnnonceState createState() => _TextCardAnnonceState();
}

class _TextCardAnnonceState extends State<TextCardAnnonce> {
  bool _expended = false;
  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.width;
    final appBarHeight = deviceHeight / 10 + 10;
    final bodyHeight = deviceHeight - appBarHeight;
    final firstCardHeight = bodyHeight * .40 +10;
    final imageDecalage = appBarHeight;
    final photoHeight = deviceWidth * .25;
    final lefAndReightSpace = ((deviceWidth - 20) - photoHeight) / 2;
    print(firstCardHeight);
    return // Troisiemme Container
        Card(
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        height: _expended ? min(firstCardHeight,firstCardHeight) : firstCardHeight*2,
        // height: bodyHeight * .5,
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                        child: Container(
                      // width: deviceWidth * .75,
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        widget.titre,
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'BAARS'),
                      )),
                ),
                IconButton(
                  icon: !_expended
                      ? Icon(Icons.expand_less)
                      : Icon(Icons.expand_more),
                  onPressed: () {
                    setState(() {
                      _expended = !_expended;
                    });
                  },
                ),
              ],
            ),
            Container(
              // height: _expended ? min(3 * 90.0 + 60, 600) : firstCardHeight - 210,
              
                child: Flexible(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      widget.description,
                      style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                      overflow: !_expended? TextOverflow.clip:TextOverflow.ellipsis,
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
