import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:myprofmobil/outils/myStyle.dart';
import 'package:myprofmobil/widgets/dayContainer.dart';
import 'package:myprofmobil/widgets/daySRow.dart';
import '../services/calendarServices.dart';

//PAGE D'AGENDA DE L'UTILISATEUR BY PATRICK
class Calendartask1 extends StatefulWidget {
  static const routeName = "calendar";
  @override
  _Calendartask1State createState() => _Calendartask1State();
}

class _Calendartask1State extends State<Calendartask1> {
  CalendarServices mySerice = CalendarServices();
  int numberRow = 2;
  List<DateTime> currenteWeek = [];
  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    currenteWeek = mySerice.currentWeek();
    return Scaffold(
      body: Container(
        width: deviceWidth,
        height: deviceHeight,
         
        decoration: BoxDecoration(
          
          image: DecorationImage(
              image: ExactAssetImage("assets/images/ecole.jpg"),
              fit: BoxFit.cover,colorFilter: ColorFilter.mode(Colors.black87.withOpacity(.8) ,BlendMode.darken)),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
          child: Column(
            children: <Widget>[
              // AppBare
              Container(
                // color: Colors.grey.withOpacity(.5),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 40,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 2),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          IconButton(
                            icon: Icon(
                              Icons.arrow_back_ios,
                              color: Colors.white,
                            ),
                            onPressed: () => Navigator.of(context).pop(),
                          ),
                          Text(
                            mySerice.strMonth(DateTime.now()),
                            style: TextStyle(color: themeColor, fontSize: 22),
                          ),
                          Container(),
                        ],
                      ),
                    ),
                    // SizedBox(
                    //   height: 10,
                    // ),
                  ],
                ),
              ),
              // Main Container
              Container(
                height: deviceHeight - 100,
                child: Column(
                  children: <Widget>[
                    Container(
                      height: deviceHeight * .40,
                      width: MediaQuery.of(context).size.width,
                      child: SingleChildScrollView(
                        //Calendar
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 0,vertical: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            // color: Colors.black.withOpacity(.5),
                          ),
                          margin:
                              EdgeInsets.only(left: 10, right: 10, bottom: 15),
                          child: Column(
                            children: <Widget>[
                              // Liste Day
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width / 1.1,
                                    height: 40,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: <Widget>[
                                        Text(
                                          "Lun",
                                          style:
                                              TextStyle(color: Colors.white54),
                                        ),
                                        Text(
                                          "Mar",
                                          style:
                                              TextStyle(color: Colors.white54),
                                        ),
                                        Text(
                                          "Mer",
                                          style:
                                              TextStyle(color: Colors.white54),
                                        ),
                                        Text(
                                          "Jeu",
                                          style:
                                              TextStyle(color: Colors.white54),
                                        ),
                                        Text(
                                          "Ven",
                                          style:
                                              TextStyle(color: Colors.white54),
                                        ),
                                        Text(
                                          "Sam",
                                          style:
                                              TextStyle(color: Colors.white54),
                                        ),
                                        Text(
                                          "Dim",
                                          style:
                                              TextStyle(color: Colors.white54),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                // color: Colors.red,
                                height: deviceHeight * .30,
                                child: ListView.builder(
                                  itemCount: 7,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return DaysRow(
                                      index + 1,
                                    );
                                  },
                                ),
                              )
                              // End Callendar
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 2),
                        width: MediaQuery.of(context).size.width,
                        // height: deviceHeight * 55,
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.9),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(35),
                                topRight: Radius.circular(35))),
                        child: ListView(
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                SizedBox(height: 10),
                                Container(
                                  height: 70,
                                  margin: EdgeInsets.only(left: 20),
                                  width: MediaQuery.of(context).size.width,
                                  child: ListView.builder(
                                      scrollDirection: Axis.horizontal,
                                      itemCount: currenteWeek.length,
                                      itemBuilder: (context, i) {
                                        return DayContainer(currenteWeek[i]);
                                      }),
                                ),
                                SizedBox(height: 20),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 30),
                                  child: Row(
                                    children: <Widget>[
                                      Text(
                                        "Today's Shedule",
                                        style: TextStyle(
                                            color: Colors.black,
                                            // fontWeight: FontWeight.bold,
                                            fontSize: 15),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 20),
                                Container(
                                  height: 90,
                                  width:
                                      MediaQuery.of(context).size.width / 1.2,
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Row(
                                            children: <Widget>[
                                              Text(
                                                "Morning Meeting",
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Icon(
                                                Icons.free_breakfast,
                                                color: Colors.black,
                                                size: 15,
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: 5),
                                          Row(
                                            children: <Widget>[
                                              Icon(Icons.location_on,
                                                  color: Colors.black),
                                              Text(
                                                "Morning Meeting",
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    color: Colors.purple),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Row(
                                            children: <Widget>[
                                              Text("08:15"),
                                            ],
                                          ),
                                          SizedBox(height: 5),
                                          Row(
                                            children: <Widget>[
                                              Text(" 09:00"),
                                            ],
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(height: 20),
                                Container(
                                  height: 90,
                                  width:
                                      MediaQuery.of(context).size.width / 1.2,
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Row(
                                            children: <Widget>[
                                              Text(
                                                "Morning Meeting",
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Icon(
                                                Icons.free_breakfast,
                                                color: Colors.black,
                                                size: 15,
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: 5),
                                          Row(
                                            children: <Widget>[
                                              Icon(Icons.location_on,
                                                  color: Colors.black),
                                              Text(
                                                "Morning Meeting",
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    color: Colors.purple),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Row(
                                            children: <Widget>[
                                              Text("08:15"),
                                            ],
                                          ),
                                          SizedBox(height: 5),
                                          Row(
                                            children: <Widget>[
                                              Text(" 09:00"),
                                            ],
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
