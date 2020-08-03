import 'package:flutter/material.dart';
import 'package:myprofmobil/outils/myStyle.dart';
class CalandarDay extends StatelessWidget {
  int indDay;
  bool isToday;
  CalandarDay(this.indDay,[this.isToday]);
  @override
  Widget build(BuildContext context) {
   
    return Container(
            height: 40,
            width: 40,
            alignment: Alignment.center,
            child: Text(
              indDay.toString(),
              style: TextStyle(color: isToday?themeColor:Colors.white54, fontSize: 20),
            ),
          )
         ;
  }
}