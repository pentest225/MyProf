import 'package:flutter/material.dart';
import 'package:myprofmobil/outils/myStyle.dart';
import 'package:myprofmobil/screnn/pass.dart';
import 'package:myprofmobil/screnn/sync.dart';

class Verify extends StatefulWidget {

  static const routeName = '/verify';

  @override
  _VerifyState createState() => _VerifyState();
}

class _VerifyState extends State<Verify> {
  @override
  Widget build(BuildContext context) {

    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        //color: themeColor,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [themeColor, Colors.orangeAccent]
            )
        ),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  height: 250,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 50),
                      Row(
                        children: <Widget>[
                          InkWell(
                            onTap:() {
                              Navigator.pop(context);
                            },
                            child: Icon(Icons.arrow_back_ios,
                                color: Colors.white, size: 25),
                          ),
                        ],
                      ),
                      SizedBox(height: 30),
                      Row(
                        children: <Widget>[
                          Text(
                            "Inscription",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontFamily: 'BAARS',
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: <Widget>[
                          Text(
                            "40%",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: 10),
                          Text(
                            "Complete",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            height: 10,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          Container(
                            height: 10,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          Container(
                            height: 10,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Colors.white24,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          Container(
                            height: 10,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Colors.white24,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          Container(
                            height: 10,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Colors.white24,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          Container(
                            height: 10,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Colors.white24,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Container(
                height: deviceHeight/1.56,
                decoration: BoxDecoration(
                  color: fondcolor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 40),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Row(
                          children: <Widget>[
                            Text(
                              "Vérification de l'Email",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Row(
                          children: <Widget>[
                            Text(
                              "Svp entrez le code de vérification",
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 40),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(
                            height: 10,
                            width: 40,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border(
                                  bottom: BorderSide(color: Colors.grey),
                                )),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: TextField(
                                cursorColor: themeColor,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "",
                                  hintStyle:
                                  TextStyle(color: Colors.black26),

                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 10,
                            width: 40,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border(
                                  bottom: BorderSide(color: Colors.grey),
                                )),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: TextField(
                                cursorColor: themeColor,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "",
                                  hintStyle:
                                  TextStyle(color: Colors.black26),

                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 10,
                            width: 40,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border(
                                  bottom: BorderSide(color: Colors.grey),
                                )),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: TextField(
                                cursorColor: themeColor,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "",
                                  hintStyle:
                                  TextStyle(color: Colors.black26),

                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 10,
                            width: 40,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border(
                                  bottom: BorderSide(color: Colors.grey),
                                )),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: TextField(
                                cursorColor: themeColor,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "",
                                  hintStyle:
                                  TextStyle(color: Colors.black26),

                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 70),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                              PageRouteBuilder(
                                pageBuilder: (context, animation, secondaryAnimation) {
                                  return Passcode();
                                },
                                transitionDuration: const Duration(seconds: 1),
                              ));
                        },
                        child: Container(
                          margin: EdgeInsets.only(left: 60, right: 60),
                          height: 40,
                          width: 200,
                          decoration: BoxDecoration(
                              color: themeColor,
                              borderRadius: BorderRadius.circular(50),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black87,
                                    offset: Offset(0.0, 1.5),
                                    blurRadius: 1.5
                                )
                              ]
                          ),
                          child: Center(
                            child: Text(
                              "Envoyer",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
