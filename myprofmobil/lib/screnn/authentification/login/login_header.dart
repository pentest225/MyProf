import 'package:flutter/material.dart';

class LoginHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;

    return Container(
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: deviceHeight / 7, bottom: 5),
            height: deviceHeight / 8.5,
            width: deviceWidth / 4,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/logo.png'),
                    fit: BoxFit.cover
                )
            ),
          ),
          Text('MyProf', style: TextStyle(
              fontWeight: FontWeight.bold, fontFamily: 'BAARS', fontSize: 25
          ),),
        ],
      ),
    );
  }
}
