import 'package:flutter/material.dart';
import 'package:myprofmobil/outils/myStyle.dart';
import 'package:myprofmobil/services/calendarServices.dart';

class DayContainer extends StatelessWidget {
  DateTime myDate;
  DayContainer(this.myDate);
  CalendarServices mySerice = CalendarServices();
  @override
  Widget build(BuildContext context) {
    bool isToday = mySerice.isToday(myDate);
    return Container(
      height: 60,
      width: 60,
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: isToday? themeColor:Colors.white),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            myDate.day.toString(),
            style: TextStyle(color:isToday? Colors.white:Colors.black26, fontWeight: FontWeight.bold),
          ),
          Text(
            mySerice.strDay(myDate).substring(0, 3),
            style: TextStyle(color: isToday?Colors.white:Colors.black26, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
