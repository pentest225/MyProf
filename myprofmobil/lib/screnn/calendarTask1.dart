import 'package:flutter/material.dart';
import 'package:myprofmobil/widgets/daySRow.dart';
import '../services/calendarServices.dart';

class Calendartask1 extends StatefulWidget {
  static const routeName = "calendar";
  @override
  _Calendartask1State createState() => _Calendartask1State();
}

class _Calendartask1State extends State<Calendartask1> {
  CalendarServices mySerice = CalendarServices();
  int numberRow = 2;
  @override
  Widget build(BuildContext context) {
    
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        width: deviceWidth,
        height: deviceHeight,
        // color: Color.fromRGBO(30, 32, 39, 1),
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(.9),
          // image: DecorationImage(
          //     image: AssetImage("assets/images/designmobil2.jpg"),
          //     fit: BoxFit.cover),
        ),
        child: Column(
          children: <Widget>[
            // AppBare
            Container(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
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
                          style: TextStyle(color: Colors.white, fontSize: 22),
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
                    // color:  Colors.grey,
                    width: MediaQuery.of(context).size.width,
                    child: SingleChildScrollView(
                      //Calendar
                      child: Container(
                        // color: Colors.grey.withOpacity(.7),
                        margin: EdgeInsets.only(left:10,right: 10,bottom: 15),
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
                                        style: TextStyle(color: Colors.white54),
                                      ),
                                      Text(
                                        "Mar",
                                        style: TextStyle(color: Colors.white54),
                                      ),
                                      Text(
                                        "Mer",
                                        style: TextStyle(color: Colors.white54),
                                      ),
                                      Text(
                                        "Jeu",
                                        style: TextStyle(color: Colors.white54),
                                      ),
                                      Text(
                                        "Ven",
                                        style: TextStyle(color: Colors.white54),
                                      ),
                                      Text(
                                        "Sam",
                                        style: TextStyle(color: Colors.white54),
                                      ),
                                      Text(
                                        "Dim",
                                        style: TextStyle(color: Colors.white54),
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
                                itemBuilder: (BuildContext context, int index) {
                                  return DaysRow(index+1);
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
                                    itemCount: 6,
                                    itemBuilder: (context, i) {
                                      return Container(
                                        height: 60,
                                        width: 60,
                                        margin: EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            color: Colors.blue),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: <Widget>[
                                            Text(
                                              "15",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              "Lun",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        ),
                                      );
                                    }),
                              ),
                              SizedBox(height: 20),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 30),
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
                                width: MediaQuery.of(context).size.width / 1.2,
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
                                                  fontWeight: FontWeight.bold),
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
                                width: MediaQuery.of(context).size.width / 1.2,
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
                                                  fontWeight: FontWeight.bold),
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
    );
  }
}
