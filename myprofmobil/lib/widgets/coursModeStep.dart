import 'package:flutter/material.dart';
import 'package:myprofmobil/outils/myStyle.dart';

class CoursModeStep extends StatefulWidget {
  @override
  _CoursModeStepState createState() => _CoursModeStepState();
}

class _CoursModeStepState extends State<CoursModeStep> {
  bool isSelected = false;
  bool singleCourMode = false;
  bool multiCourMode = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: MediaQuery.of(context).size.height,
      // width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            /* Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: FAProgressBar(
                              progressColor: accanceColor,
                              currentValue: 30,
                              displayText: '%',
                              animatedDuration: Duration(seconds: 1),
                              maxValue: 100,
                            ),
                          ),*/
            Text(
              "Quel type de cours souhaitez-vous donner?",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 20,
                  fontFamily: 'BAARS',
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                InkWell(
                  onTap: () {
                    setState(() {
                      singleCourMode = !singleCourMode;
                    });
                  },
                  child: Card(
                    elevation: singleCourMode ? 15 : 0,
                    color:
                        singleCourMode ? themeColor.withOpacity(.5) : bgColor,
                    child: Container(
                      height: 150,
                      width: 160,
                      decoration:
                          BoxDecoration(borderRadius: BorderRadius.circular(5)),
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 15,
                          ),
                          Icon(
                            Icons.person,
                            size: 60,
                            color: singleCourMode ? Colors.white : Colors.white,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Cours individuel',
                            style: TextStyle(
                                color: singleCourMode
                                    ? Colors.white
                                    : Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Roboto'),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      multiCourMode = !multiCourMode;
                    });
                  },
                  child: Card(
                    elevation: multiCourMode ? 15 : 0,
                    color: multiCourMode ? themeColor.withOpacity(.5) : bgColor,
                    child: Container(
                      height: 150,
                      width: 160,
                      decoration:
                          BoxDecoration(borderRadius: BorderRadius.circular(5)),
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 15,
                          ),
                          Icon(
                            Icons.people,
                            size: 60,
                            color: singleCourMode ? Colors.white : Colors.white,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Cours en groupe',
                            style: TextStyle(
                                color:
                                    multiCourMode ? Colors.white : Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Roboto'),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
