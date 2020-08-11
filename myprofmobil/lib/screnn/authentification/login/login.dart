import 'package:flutter/material.dart';
import 'package:myprofmobil/outils/myStyle.dart';
import '../../home_screen.dart';
import '../../regis.dart';
import '../register/registered.dart';
import 'login_fin.dart';
import 'login_header.dart';
import 'login_section.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
              LoginHeader(),
              LoginSection(),
              LoginFin()

            ],
          ),
        ),
      ),
    );
  }
}
