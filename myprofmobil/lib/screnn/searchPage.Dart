import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:myprofmobil/widgets/matierreCard.dart';
import '../outils/myStyle.dart';

class SearchPage extends StatefulWidget {
  static const routeName = '/searchPage';

  SearchPage({Key key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  bool onTapInputMatierre;
  TextEditingController matierreController = TextEditingController();
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
      body: SingleChildScrollView(
        child: Container(
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
                          controller: matierreController,
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
              ),
              onTapInputMatierre
                  ? Container(
                      height: deviceHeight * .65,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              "Meilleur Matierres",
                              style: h1,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 15),
                            height: deviceHeight * .58,
                            child: ListView(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              children: [
                                InkWell(
                                  child: MatierreCard("Maths"),
                                  onTap: () {
                                    setState(() {
                                      matierreController.text = "Maths";
                                    });
                                  },
                                ),
                                InkWell(
                                  child: MatierreCard("Python"),
                                  onTap: () {
                                    setState(() {
                                      matierreController.text = "Python";
                                    });
                                  },
                                ),
                                InkWell(
                                  child: MatierreCard("Science Physique"),
                                  onTap: () {
                                    setState(() {
                                      matierreController.text = "Science Physique";
                                    });
                                  },
                                ),
                                InkWell(
                                  child: MatierreCard("Java Script"),
                                  onTap: () {
                                    setState(() {
                                      matierreController.text = "Java Script";
                                    });
                                  },
                                ),
                                InkWell(
                                  child: MatierreCard("Francais"),
                                  onTap: () {
                                    setState(() {
                                      matierreController.text = "Francais";
                                    });
                                  },
                                ),
                             
                               InkWell(
                                  child: MatierreCard("Maths"),
                                  onTap: () {
                                    setState(() {
                                      matierreController.text = "Maths";
                                    });
                                  },
                                ),
                                InkWell(
                                  child: MatierreCard("Python"),
                                  onTap: () {
                                    setState(() {
                                      matierreController.text = "Python";
                                    });
                                  },
                                ),
                                InkWell(
                                  child: MatierreCard("Science Physique"),
                                  onTap: () {
                                    setState(() {
                                      matierreController.text = "Science Physique";
                                    });
                                  },
                                ),
                                InkWell(
                                  child: MatierreCard("Java Script"),
                                  onTap: () {
                                    setState(() {
                                      matierreController.text = "Java Script";
                                    });
                                  },
                                ),
                                
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  : Container(
                      child: Container(
                        child: Row(
                          children: [
                            Icon(Icons.place, color: Colors.white),
                            Text(
                              "Lacalisé votre Prof",
                              style: h1,
                            ),
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
