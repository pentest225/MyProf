import 'package:flutter/material.dart';

class AvisCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    final appBarHeight = deviceHeight * .1;
    final bodyHeight = deviceHeight - appBarHeight;
    final roundedSectionHeight = bodyHeight - bodyHeight * .25;
    final demandeCardWidth = deviceWidth - 20;
    return Container(
     
      margin: EdgeInsets.only(top: 10,left: 10,right: 10),
      width: demandeCardWidth - 40,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10)),
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: <Widget>[
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage("assets/images/guitare.jpg"),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    vertical: 10,
                  ),
                  margin: EdgeInsets.only(left: 5, top: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Alane Dupon",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Container(
                              width: demandeCardWidth - 110,
                              child: Text(
                                "Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression.",
                                style: TextStyle(color: Colors.black54, fontFamily: 'Barlow', fontSize: 16),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ], 
            ),
          ),
          
        ],
      ),
    );
  }
}
