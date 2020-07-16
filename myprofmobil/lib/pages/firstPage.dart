import 'package:flutter/material.dart';
import 'package:myprofmobil/outils/myStyle.dart';

class FirstPage extends StatelessWidget {

  static const routeName = '/firstpage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          //color: Colors.green,
          image: DecorationImage(
            image: AssetImage('assets/images/ecole.jpg',),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken)
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            SizedBox(height: 150,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('MyProf', style: TextStyle(
                  color: Colors.white, fontSize: 50, fontWeight: FontWeight.bold, fontFamily: 'BAARS'
                ),),
                SizedBox(width: 5,),
                Icon(Icons.school, size: 50, color: themeColor,)
              ],
            ),
           // SizedBox(height: 150,),
            Container(
              height: MediaQuery.of(context).size.height/14,
              width: MediaQuery.of(context).size.width/1.3,
              decoration: BoxDecoration(
                  color: themeColor,
                borderRadius: BorderRadius.circular(50)
              ),
            )
          ],
        ),
      ),
    );
  }
}
