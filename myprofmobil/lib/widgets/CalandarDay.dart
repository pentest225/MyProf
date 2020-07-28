import 'package:flutter/material.dart';
class CalandarDay extends StatelessWidget {
  int indDay;
  CalandarDay(this.indDay);
  @override
  Widget build(BuildContext context) {
    return Container(
            height: 40,
            width: 40,
            alignment: Alignment.center,
            child: Text(
              indDay.toString(),
              style: TextStyle(color: Colors.white54, fontSize: 20),
            ),
          )
         ;
  }
}