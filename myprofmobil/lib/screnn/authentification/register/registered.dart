import 'package:flutter/material.dart';
import 'package:myprofmobil/outils/myStyle.dart';

import '../login/login.dart';
import 'register_fin.dart';
import 'register_header.dart';
import 'register_section.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {

    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        height: deviceHeight,
        width: deviceWidth,
        color: fondcolor,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              RegisterHeader(),
              RegisterSection(),
              RegisterFin()

            ],
          ),
        ),
      ),
    );
  }
}
