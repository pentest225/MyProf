import 'package:flutter/material.dart';
import 'package:myprofmobil/widgets/multiSelectChip.dart';

class SousSpecialiteStep extends StatefulWidget {
  @override
  _SousSpecialiteStepState createState() => _SousSpecialiteStepState();
}

class _SousSpecialiteStepState extends State<SousSpecialiteStep> {
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
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            /*Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: FAProgressBar(
                              progressColor: accanceColor,
                              currentValue: 25,
                              displayText: '%',
                             animatedDuration: Duration(seconds: 1),
                              maxValue: 100,
                            ),
                          ),*/
            /*Padding(
                            padding: EdgeInsets.all(8.0),
                            child: new LinearPercentIndicator(
                              width: MediaQuery.of(context).size.width/1.1,
                              animation: true,
                              lineHeight: 20.0,
                              animationDuration: 2000,
                              percent: 0.25,
                              center: Text("25.0%", style: TextStyle(
                                  color: Colors.white
                              ),),
                              linearStrokeCap: LinearStrokeCap.roundAll,
                              progressColor: accanceColor,
                            ),
                          ),*/

            Text(
              "Veuillez clicker sur vos compétences (5maximums)...",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 18,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 20,
            ),
            MultiSelectedChip(
              competences,
              myReturnList: (myList) {
                setState(() {
                  returnList = myList;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
