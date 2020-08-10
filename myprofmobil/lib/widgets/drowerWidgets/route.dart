import 'package:flutter/material.dart';
import 'package:myprofmobil/outils/myStyle.dart';
import 'package:myprofmobil/screnn/firstPage.dart';

class MyRoute extends StatelessWidget {
  IconData icon;
  String text;
  String route;
  MyRoute(this.icon, this.text, this.route);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Icon(
            icon,
            color: themeColor,
            size: 22,
          ),
          SizedBox(
            width: 5,
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).pushNamed(route);
            },
            child: Text(text,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                    fontFamily: 'Barlow')),
          )
        ],
      ),
    );
  }
}
