import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';

class ProgressBar extends StatefulWidget {
  @override
  _ProgressBarState createState() => _ProgressBarState();
}

class _ProgressBarState extends State<ProgressBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Linear Percent Indicators"),
      ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                  child: FAProgressBar(
                    currentValue: 80,
                    displayText: '%',
                  )),
              Padding(
                padding: EdgeInsets.all(15.0),
                child: new LinearPercentIndicator(
                  width: 140.0,
                  lineHeight: 14.0,
                  percent: 0.5,
                  center: Text(
                    "50.0%",
                    style: new TextStyle(fontSize: 12.0),
                  ),
                  trailing: Icon(Icons.mood),
                  linearStrokeCap: LinearStrokeCap.roundAll,
                  backgroundColor: Colors.grey,
                  progressColor: Colors.blue,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15.0),
                child: new LinearPercentIndicator(
                  width: 170.0,
                  animation: true,
                  animationDuration: 1000,
                  lineHeight: 20.0,
                  leading: new Text("left content"),
                  trailing: new Text("right content"),
                  percent: 0.2,
                  center: Text("20.0%"),
                  linearStrokeCap: LinearStrokeCap.butt,
                  progressColor: Colors.red,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15.0),
                child: new LinearPercentIndicator(
                  width: MediaQuery.of(context).size.width - 50,
                  animation: true,
                  lineHeight: 20.0,
                  animationDuration: 2000,
                  percent: 0.9,
                  center: Text("90.0%"),
                  linearStrokeCap: LinearStrokeCap.roundAll,
                  progressColor: Colors.greenAccent,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15.0),
                child: new LinearPercentIndicator(
                  width: MediaQuery.of(context).size.width - 50,
                  animation: true,
                  lineHeight: 20.0,
                  animationDuration: 2500,
                  percent: 0.8,
                  center: Text("80.0%"),
                  linearStrokeCap: LinearStrokeCap.roundAll,
                  progressColor: Colors.green,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15.0),
                child: Column(
                  children: <Widget>[
                    new LinearPercentIndicator(
                      width: 100.0,
                      lineHeight: 8.0,
                      percent: 0.2,
                      progressColor: Colors.red,
                    ),
                    new LinearPercentIndicator(
                      width: 100.0,
                      lineHeight: 8.0,
                      percent: 0.5,
                      progressColor: Colors.orange,
                    ),
                    new LinearPercentIndicator(
                      width: 100.0,
                      lineHeight: 8.0,
                      percent: 0.9,
                      progressColor: Colors.blue,
                    )
                  ],
                ),
              ),
            ],
          ),
        )
    );
  }
}
//index i starts from 0!

