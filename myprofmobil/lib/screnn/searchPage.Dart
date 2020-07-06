import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../outils/myStyle.dart';

class SearchPage extends StatefulWidget {
  static const routeName = '/searchPage';
  SearchPage({Key key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: themeColor,
      appBar: AppBar(
        backgroundColor: themeColor,
        elevation: 0,
        actions: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 10),
            margin: EdgeInsets.only(right: 25),
            child: Text('MyProf',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
          )
        ],
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        height: deviceHeight,
        child: Column(
          children: [
            Container(
              height: deviceHeight * .2,
              color: Colors.white,
              child: Column(
                children: [
                  Card(
                    elevation: 15,
                    color: Colors.grey,
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        // color: Colors.grey,
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Quelle matierre ?',
                            icon: Icon(Icons.search)),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
