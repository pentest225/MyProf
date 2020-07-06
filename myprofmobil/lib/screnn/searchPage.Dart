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
  bool onTapInputMatierre;
  @override
  void initState() {
    // TODO: implement initState
    onTapInputMatierre = true;
    super.initState();
  }

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
              child: Column(
                children: [
                  Card(
                    elevation: onTapInputMatierre ? 15 : 0,
                    color: onTapInputMatierre
                        ? Colors.white
                        : Colors.grey.withOpacity(.5),
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: TextField(
                        cursorColor: themeColor,
                        onTap: () {
                          setState(() {
                            onTapInputMatierre = true;
                          });
                          print("tap ...1");
                        },
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Quelle matierre ?',
                            icon: Icon(
                              Icons.search,
                              color: themeColor,
                            )),
                      ),
                    ),
                  ),
                  Card(
                    elevation: onTapInputMatierre ? 0 : 15,
                    color: onTapInputMatierre
                        ? Colors.grey.withOpacity(.5)
                        : Colors.white,
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        // color: Colors.grey,
                      ),
                      child: TextField(
                        onTap: () {
                          setState(() {
                            onTapInputMatierre = false;
                          });
                          print("tap ...2");
                        },
                        cursorColor: themeColor,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Adresse ou quartier ',
                            icon: Icon(
                              Icons.place,
                              color: themeColor,
                            )),
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