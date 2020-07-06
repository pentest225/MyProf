import 'package:flutter/material.dart';
import 'package:myprofmobil/outils/myStyle.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: themeColor,
        elevation: 0,
        /*leading: Container(
            margin: EdgeInsets.only(left: 25),
            child: IconButton(
              icon: Icon(Icons.home),
              color: Colors.white,
              onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (_)=> Verify())),
            )
        ),*/
        actions: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 10),
            margin: EdgeInsets.only(right: 25),
            child: Text('MyProf', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
          )
        ],
      ),
    );
  }
}
