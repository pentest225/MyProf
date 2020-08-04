import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:myprofmobil/outils/myStyle.dart';

class FifthSwitch extends StatefulWidget {
  @override
  _FifthSwitchState createState() => _FifthSwitchState();
}

class _FifthSwitchState extends State<FifthSwitch> {

  bool selected = false;
  Size get s => MediaQuery.of(context).size;
  int isOn = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
     // margin: EdgeInsets.only(left: 2),
      width: s.width / 4,
      height: s.height / 10,
      //color: Colors.grey,
      color: Color.fromRGBO(255, 255, 255, 1),
      child: Stack(
        children: <Widget>[
          Positioned(
            top: (s.height / 4 - s.width / 4 * 0.5) / 6,
            left: (s.width / 4 - s.width / 5) / 1,
            child: AnimatedContainer(
              margin: EdgeInsets.only(left: 8),
              duration: Duration(milliseconds: 360),
              width: s.width / 7,
              height: s.width / 7 * 0.5,
              decoration: BoxDecoration(
                color: isOn == 0 ? Color(0xffdddddd) : themeColor,
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
          AnimatedPositioned(
            duration: Duration(milliseconds: 360),
            top: (s.height / 4 - s.width / 6) / 8,
            right: s.width / 25 +
                lerpDouble(s.width / 14, -s.width / 14, isOn.toDouble()),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  isOn == 0 ? isOn = 1 : isOn = 0;
                });
              },
              child: Container(
                width: s.width / 6,
                height: s.width / 10,
                child: Center(
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 360),
                    width: lerpDouble(10, s.width / 10 - 6, isOn.toDouble()),
                    height: s.width / 14 - 6,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(24),
                      border: Border.all(
                        color:
                            isOn == 0 ? Color(0xff2c2c2c) : Color(0xffdddddd),
                        width: 5,
                      ),
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0, 8),
                      blurRadius: 12,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
