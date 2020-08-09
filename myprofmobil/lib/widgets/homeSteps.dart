import 'package:flutter/material.dart';
import 'package:myprofmobil/outils/myStyle.dart';

class HomeSteps extends StatelessWidget {
  String titre;
  String description;
  String routeImage;
  HomeSteps(this.titre,this.description,this.routeImage);

  @override
  Widget build(BuildContext context) {
    double itemHeight = 120;
    return Container(
      padding: EdgeInsets.all(12),
      margin: EdgeInsets.all(3),
      height: itemHeight,
      width: MediaQuery.of(context).size.width / 1.5,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(routeImage),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.black87.withOpacity(0.7), BlendMode.darken)),
          color: themeColor.withOpacity(.6),
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          Center(
              child: Text(
            titre,
            style: TextStyle(
                color: themeColor, fontWeight: FontWeight.bold, fontSize: 18),
          )),
          SizedBox(
            height: 15,
          ),
          Center(
              child: Text(
                description,
            style: TextStyle(
                fontFamily: 'BAARS',
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.white.withOpacity(0.8)),
          ))
        ],
      ),
    );
  }
}
