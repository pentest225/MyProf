import 'package:flutter/material.dart';
import 'package:myprofmobil/outils/myStyle.dart';

class PageDisc extends StatefulWidget {
  @override
  _PageDiscState createState() => _PageDiscState();
}

class _PageDiscState extends State<PageDisc> {
  bool _switchVal = true;
  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            height: deviceHeight * .25,
            width: MediaQuery.of(context).size.width / 1.1,
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            margin: EdgeInsets.symmetric(vertical: 5),
            decoration: BoxDecoration(
              color: fondcolor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage("assets/images/fille.jpg"),
                              fit: BoxFit.cover)),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: Text(
                        "Devenir Full S...",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    // Container(
                    //   height: 50,
                    //   width: 100,
                    //   padding: EdgeInsets.all(5),
                    //   alignment: Alignment.centerRight,
                    //   decoration: BoxDecoration(
                    //     color: Colors.green,
                    //     borderRadius: BorderRadius.circular(30),
                    //   ),
                    //   child: Container(
                    //       height: 40,
                    //       width: 40,
                    //       alignment: Alignment.center,
                    //       decoration: BoxDecoration(
                    //           shape: BoxShape.circle, color: Colors.white),
                    //       child: Icon(
                    //         Icons.check,
                    //         size: 30,
                    //         color: Colors.green,
                    //       )),
                    // ),
                    Switch(
                      activeColor: Color.fromRGBO(90, 203, 141, 1),
                      inactiveTrackColor: Colors.grey,
                      onChanged: (bool value) {
                        setState(() {
                          return this._switchVal = value;
                        });
                      },
                      value: this._switchVal,
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  themeColor,
                                  Color.fromRGBO(254, 229, 233, 1)
                                ]),
                            color: Colors.pink,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                            "30\$/h",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          // height: 50,
                          // width: 60,
                          padding: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(254, 229, 233, 1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                            "Flutter",
                            style: TextStyle(
                                color: themeColor, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(width: 1, color: Colors.grey),
                      ),
                      child: Container(
                          child: Text(
                        "Modifier",
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold),
                      )),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
