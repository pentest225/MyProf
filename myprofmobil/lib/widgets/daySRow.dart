import 'package:flutter/material.dart';
import 'package:myprofmobil/services/calendarServices.dart';

import 'CalandarDay.dart';

class DaysRow extends StatefulWidget {
  int index;
  DaysRow(this.index);
  @override
  _DaysRowState createState() => _DaysRowState();
}

class _DaysRowState extends State<DaysRow> {
  CalendarServices myService = CalendarServices();

  List<DateTime> myCalendarList = [];
  List<Widget>myRow;
  List<Widget>generatRowChilds(){
    List<Widget>myRow = [];
    myCalendarList = myService.generateWeek(DateTime.now(),widget.index);
    myCalendarList.forEach((el){
      myRow.add(CalandarDay(el.day));
    });
    return myRow;
  }
  @override
  Widget build(BuildContext context) {
    
    print("First Weeek of Manth ");
    print(myCalendarList);
    return Container(
      width: MediaQuery.of(context).size.width / 1.1,
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: generatRowChilds(),
      ),
    );
  }
}
