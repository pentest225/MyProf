import 'package:flutter/material.dart';
import 'package:myprofmobil/outils/myStyle.dart';
import 'package:myprofmobil/screnn/authentification/register/registered.dart';

class LoginFin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;

    return Container(
      margin: EdgeInsets.only(top: deviceHeight / 14 - 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Pas de compte? ', style: TextStyle(
              color: Colors.black54, fontSize: 16, fontFamily: 'BAARS'
          ),),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterPage()));
            },
            child: Text("S'inscrire", style: TextStyle(
                color: themeColor, fontSize: 16, fontFamily: 'BAARS', fontWeight: FontWeight.bold
            ),),
          ),

        ],
      ),
    );
  }
}
