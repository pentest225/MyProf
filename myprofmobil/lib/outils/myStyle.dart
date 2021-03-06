import 'package:flutter/material.dart';

final themeColor = Color.fromRGBO(250, 112, 53, 1);
final bgColor = Color.fromRGBO(245, 245, 247, 1);
final textBoldColor = Color.fromRGBO(177, 177, 177, 1);
final textBolderColor = Color.fromRGBO(68, 68, 68, 1);
final accanceColor = Color.fromRGBO(17, 122, 139, 1);
final esthycolor = Color.fromRGBO(133, 136, 241, 1);
final fondcolor = Color.fromRGBO(242, 242, 242, 1);
final h1 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Colors.grey,
    fontFamily: 'BAARS');
final h2 = TextStyle(
    color: Colors.black,
    fontSize: 18,
    fontWeight: FontWeight.w400,
    fontFamily: 'BAARS');
final backImage = 'assets/images/ecole.jpg';
final logo = 'assets/images/logo.png';
final logoGif = 'assets/images/gitlogo.gif';
final Widget IconWidget = Container(
  alignment: Alignment.topCenter,
  child: Container(
    height: 40,
    width: 40,
    decoration: BoxDecoration(
        //color: Colors.white,
        shape: BoxShape.circle,
        image: DecorationImage(image: AssetImage(logo), fit: BoxFit.cover)),
  ),
);
