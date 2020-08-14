import 'package:flutter/material.dart';
import 'package:myprofmobil/outils/myStyle.dart';

class DrowerContainer extends StatelessWidget {
  IconData myIcon;
  String text;
  String route;
  DrowerContainer(this.myIcon, this.text, this.route);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(route);
      },
      child: Container(
        margin: EdgeInsets.only(top: 5),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: themeColor.withOpacity(.7),
            borderRadius: BorderRadius.circular(25)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(
              myIcon,
              color: Colors.white,
              size: 30,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              text,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w200,
                  color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
