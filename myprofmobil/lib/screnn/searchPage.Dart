import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:myprofmobil/screnn/all_prof.dart';
import 'package:myprofmobil/widgets/matierreCard.dart';
import '../outils/myStyle.dart';
import 'profProfil.dart';

//PAGE DE RECHECHE D'ANNONCE OU PROFFESSEURS EN FONCTION DE LA MATIERRE ET VILLE
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

  _SearchPageState() {
    matierreController.addListener(() {
      print("Somme thing changing ");
      print(matierreController.text);
    });
  }
  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: fondcolor,
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          height: deviceHeight,
          child: Column(
            children: [
              Container(
                height: deviceHeight * .10,
                margin: EdgeInsets.only(top: 15),
                // padding: EdgeInsets.all(10),
                // color: Colors.red,
                child: Row(
                  children: <Widget>[
                    IconButton(
                        icon: Icon(
                          Icons.close,
                          color: themeColor,
                        ),
                        onPressed: () => Navigator.of(context).pop())
                  ],
                ),
              ),
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
                              hintText: 'Quelle matière ?',
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
                          onSubmitted: (val) {
                            Navigator.of(context).pushNamed(AllProf.routeName);
                          },
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
                              "Meilleur Matières",
                              style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: themeColor,
                                  fontFamily: 'BAARS'),
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
                                      matierreController.text =
                                          "Science Physique";
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
                                      matierreController.text =
                                          "Science Physique";
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
                            Icon(Icons.place, color: themeColor),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Localisé votre Prof",
                              style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: themeColor,
                                  fontFamily: 'BAARS'),
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
