import 'package:flutter/material.dart';
import 'package:myprofmobil/outils/myStyle.dart';

class ProfilCard extends StatelessWidget {
  IconData icon;
  String title;
  String route;
  ProfilCard(this.icon, this.title, this.route);
  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, route);
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: deviceWidth / 2.7 - 10,
          width: deviceWidth / 2.5,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(

                    color: Color(0x1a000000),
                    blurRadius: 10,
                    spreadRadius: 0,
                    offset: Offset(0, 10)

                    /*color: Colors.black87,
                    offset: Offset(0.0, 1.5),
                    blurRadius: 1.5*/
                )
              ]
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                icon,
                color: themeColor,
                size: 50,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.only(left: 25, right: 25),
                child: FittedBox(
                  fit: BoxFit.fitHeight,
                  child: Text(
                    title,
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'BAARS'),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
