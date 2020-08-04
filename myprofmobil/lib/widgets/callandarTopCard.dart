import 'package:flutter/material.dart';
import 'package:myprofmobil/manager/feature_toggle_anim.dart';
import 'package:myprofmobil/outils/myStyle.dart';
import 'package:myprofmobil/services/calendarServices.dart';
import 'package:myprofmobil/widgets/AnnonceWidget.dart';
import 'package:myprofmobil/widgets/dayContainer.dart';
import 'package:myprofmobil/widgets/daySRow.dart';
import 'package:provider/provider.dart';
//CONTAINER AMMINAT DU HAUT (DOIT PRENDRE EN CHILD LE CALENDRIE )

class TopCarAnimated extends StatefulWidget {
  @override
  _TopCarAnimatedState createState() => _TopCarAnimatedState();
}

class _TopCarAnimatedState extends State<TopCarAnimated>
    with TickerProviderStateMixin {
  AnimationController fadeController;
  AnimationController scaleController;

  Animation fadeAnimation;
  Animation scaleAnimation;

  CalendarServices mySerice = CalendarServices();
  int numberRow = 2;
  List<DateTime> currenteWeek = [];
  @override
  void initState() {
    super.initState();
    fadeController =
        AnimationController(duration: Duration(milliseconds: 180), vsync: this);

    scaleController =
        AnimationController(duration: Duration(milliseconds: 350), vsync: this);

    fadeAnimation = Tween(begin: 1.0, end: 1.0).animate(fadeController);
    scaleAnimation = Tween(begin: 0.8, end: 1.0).animate(CurvedAnimation(
      parent: scaleController,
      curve: Curves.easeInOut,
      reverseCurve: Curves.easeInOut,
    ));
  }

  forward() {
    scaleController.forward();
    fadeController.forward();
  }

  reverse() {
    scaleController.reverse();
    fadeController.reverse();
  }

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    currenteWeek = mySerice.currentWeek();
    final toggleAnim = Provider.of<ToggleBottomSheet>(context);
    toggleAnim.agendaAnimating ? forward() : reverse();

    return ScaleTransition(
      scale: scaleAnimation,
      child: FadeTransition(
        opacity: fadeAnimation,
        //Container Heider
        child: Container(
          child: Column(
            children: <Widget>[
              // AppBare
              Container(
                // color: Colors.grey.withOpacity(.5),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 2,vertical: 5),
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
                          padding:
                              EdgeInsets.symmetric(horizontal: 0, vertical: 10),
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
