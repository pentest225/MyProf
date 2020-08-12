import 'package:flutter/material.dart';
import '../outils/myStyle.dart';

class ProfWidget extends StatelessWidget {
  static const routeName = "profWidget";
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
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    final containerHeiht = deviceHeight * .4;
    final containerWidth = deviceWidth * .5 - 10;
    return Container(
      margin: EdgeInsets.only(top: 35),
      height: containerHeiht * .8,
      width: containerWidth,
      child: Stack(
        overflow: Overflow.visible,
        children: <Widget>[
          Container(
            height: containerHeiht * .8,
            margin: EdgeInsets.only(left: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                InkWell(
                  onTap: () {
                    // Navigator.of(context).pushNamed(InterfaceOne.routeName);
                  },
                  child: Container(
                    alignment: AlignmentDirectional.bottomCenter,
                    height: containerHeiht * .8,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(

                              color: Color(0x1a000000),
                              blurRadius: 10,
                              spreadRadius: 0,
                              offset: Offset(0, 10)

                            /*color: Colors.black87,
                    offset: Offset(0.0, 1.5),
                    blurRadius: 1.5*/
                          )
                        ]
                    ),
                    child: Container(
                      margin: EdgeInsets.only(top: 50),
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Text(
                              "Dagouaga ",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(
                                    Icons.location_on,
                                    size: 15,
                                    color: accanceColor,
                                  ),
                                  Text(
                                    "Abidjan Cocody",
                                    style: TextStyle(color: accanceColor),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 2),
                              child: RichText(
                                text: TextSpan(
                                  style: DefaultTextStyle.of(context).style,
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: '4000 fr/',
                                        style: TextStyle(color: themeColor)),
                                    TextSpan(
                                        text: 'h ',
                                        style: TextStyle(
                                            color: themeColor, fontSize: 10)),
                                  ],
                                ),
                              ),
                              decoration: BoxDecoration(
                                  border: Border.all(color: themeColor),
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Container(
                                    child: Row(
                                      children: <Widget>[
                                        Text(
                                          "3.7",
                                          style: TextStyle(
                                              color: themeColor, fontSize: 14),
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: themeColor,
                                          size: 14,
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
                                  /*Container(
                                    child: Row(
                                      children: <Widget>[
                                        Icon(
                                          Icons.redeem,
                                          color: themeColor,
                                          size: 14,
                                        )
                                      ],
                                    ),
                                  )*/
                                ],
                              ),
                            ),
                            Divider(),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 2),
                              child: RichText(
                                text: TextSpan(
                                  style: DefaultTextStyle.of(context).style,
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: '1er ',
                                        style: TextStyle(color: accanceColor)),
                                    TextSpan(
                                        text: 'cours gratuit ',
                                        style: TextStyle(
                                          color: accanceColor,
                                        )),
                                  ],
                                ),
                              ),
                              decoration: BoxDecoration(
                                  border: Border.all(color: accanceColor),
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                           /* Container(
                              child: Text(
                                "Flutter ",
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ),*/
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Positioned(
            top: -25,
            bottom: containerHeiht * .65 - 10,
            left: 52,
            right: 52,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black26,
                image: DecorationImage(
                    image: AssetImage("assets/images/man.jpg"),
                    fit: BoxFit.cover),
                shape: BoxShape.circle,
              ),
            ),
          )
        ],
      ),
    );
  }
}
