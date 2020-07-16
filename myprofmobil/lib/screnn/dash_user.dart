import 'package:flutter/material.dart';
import '../outils/myStyle.dart';

class UserDash extends StatelessWidget {
  static const routeName = "UserDash";
  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    final appBarHeight = deviceHeight * .1;
    final bodyHeight = deviceHeight - appBarHeight;
    final roundedSectionHeight = bodyHeight - bodyHeight * .25;
    return Scaffold(
      backgroundColor: bgColor,
      body: Container(
        height: deviceHeight,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            // I=> MY APPBAR
            Container(
              height: appBarHeight,
              // color: themeColor,
              child: Container(
                margin: EdgeInsets.only(top: deviceHeight * .055),
                padding: EdgeInsets.symmetric(horizontal: 15),
                // color: Colors.blue,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(Icons.arrow_back_ios),
                    Row(
                      children: <Widget>[
                        InkWell(
                          onTap: () => Scaffold.of(context).openDrawer(),
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                border: Border.all(color: themeColor, width: 1),
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white.withOpacity(.3)),
                            child: Text(
                              "Ajouter une annonce ",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
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
                                border: Border.all(color: themeColor, width: 1),
                                shape: BoxShape.circle,
                                color: Colors.white.withOpacity(.3)),
                            child: Text(
                              "P",
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
            // II =>MY BADY
            Container(
              height: bodyHeight,
              child: ListView(
                children: <Widget>[
                  //Image Section
                  Container(
                    height: bodyHeight * .25,
                    child: Container(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          alignment: Alignment.center,
                          width: deviceWidth * .3,
                          child: Container(
                            height: bodyHeight * .25 - 80,
                            width: bodyHeight * .25 - 80,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage("assets/images/fille.jpg"),
                                  fit: BoxFit.cover),
                            ),
                          ),
                        ),
                        Container(
                          width: deviceWidth * .7,
                          height: bodyHeight * .25 - 80,
                          padding: EdgeInsets.symmetric(vertical: 15),
                          // color: Colors.red,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Text(
                                "Dagouaga Patrick ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    fontStyle: FontStyle.normal),
                              ),
                              Text(
                                "Abidjan Cocody Rue vallon 0045 ",
                                style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    fontStyle: FontStyle.normal),
                              )
                            ],
                          ),
                        )
                      ],
                    )),
                  ),
                  //Rounded Section
                  Container(
                    height: roundedSectionHeight,
                    decoration: BoxDecoration(
                        color: themeColor,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40))),
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: roundedSectionHeight * .25,
                          color: Colors.transparent,
                          margin: EdgeInsets.symmetric(horizontal: 25),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Container(
                                height: deviceWidth * .25,
                                width: deviceWidth * .25,
                                padding: EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white.withOpacity(.3),
                                ),
                                child: Column(
                                  children: <Widget>[
                                    Icon(Icons.done_all,color: Colors.green,size: 35,),
                                    Text("Diplôme ",style: TextStyle(fontSize: 10),),
                                    Text("Verifié ",style: TextStyle(fontSize: 8),)
                                  ],
                                ),
                              ),
                              Container(
                                height: deviceWidth * .25,
                                width: deviceWidth * .25,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white.withOpacity(.3),
                                ),
                              ),
                              Container(
                                height: deviceWidth * .25,
                                width: deviceWidth * .25,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white.withOpacity(.3),
                                ),
                              )

                            ],
                          ),
                        ),
                        Container(
                            height: roundedSectionHeight * .75,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(40),
                                    topRight: Radius.circular(40))))
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
