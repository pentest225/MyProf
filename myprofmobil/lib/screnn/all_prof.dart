import 'package:flutter/material.dart';
import 'package:myprofmobil/pages/interface1.dart';
import '../outils/myStyle.dart';
import '../widgets/profWidget.dart';

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
        color: themeColor.withOpacity(.2),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            // I Container de la AppBarr
            Container(
              height: appBarHeight,
              color: themeColor,
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
                        Icons.filter_list,
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
                              color: themeColor,
                              borderRadius: BorderRadius.only(
                                  bottomLeft: const Radius.circular(50.0),
                                  bottomRight: const Radius.circular(50.0))),
                          child: Text(
                            "Informatique ",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    top: 0,
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: bodyHeight,
                      color: Colors.transparent,
                      child: ListView(
                        children: <Widget>[
                        InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => InterfaceOne()));
                          },
                          child: Container(
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    padding: EdgeInsets.only(top: 35),
                                    child: ProfWidget()),
                                  Container(

                                    padding: EdgeInsets.only(bottom: 35),
                                    child: ProfWidget())
                                ],
                              ),
                            ),
                        ),
                          Container(
                            child: Row(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.only(top: 35),
                                  child: ProfWidget()),
                                Container(
                                  
                                  padding: EdgeInsets.only(bottom: 35),
                                  child: ProfWidget())
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.only(top: 35),
                                  child: ProfWidget()),
                                Container(
                                  
                                  padding: EdgeInsets.only(bottom: 35),
                                  child: ProfWidget())
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.only(top: 35),
                                  child: ProfWidget()),
                                Container(
                                  
                                  padding: EdgeInsets.only(bottom: 35),
                                  child: ProfWidget())
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.only(top: 35),
                                  child: ProfWidget()),
                                Container(
                                  
                                  padding: EdgeInsets.only(bottom: 35),
                                  child: ProfWidget())
                              ],
                            ),
                          ),
                          ]
                          ,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
