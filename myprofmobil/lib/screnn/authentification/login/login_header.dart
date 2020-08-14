import 'package:flutter/material.dart';

class LoginHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;

    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

        children: <Widget>[
          Container(
            height: deviceHeight / 8.8,
            width: deviceWidth / 4,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/logo.png'),
                    fit: BoxFit.fitHeight
                )
            ),
          ),
          SizedBox(height: 15,),
          Text('MyProf', style: TextStyle(
              fontWeight: FontWeight.bold, fontFamily: 'BAARS', fontSize: 25
          ),),
           SizedBox(height: 15,),
        ],
      ),
    );
  }
}
