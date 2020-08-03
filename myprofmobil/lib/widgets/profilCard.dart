import 'package:flutter/material.dart';
import 'package:myprofmobil/outils/myStyle.dart';

class ProfilCard extends StatelessWidget {
  IconData icon;
  String title;
  String route;
  ProfilCard(this.icon,this.title,this.route);
  @override
  Widget build(BuildContext context) {

    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, route);
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 150,
          width: 160,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
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
                child: Text(
                  title,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'BAARS'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
