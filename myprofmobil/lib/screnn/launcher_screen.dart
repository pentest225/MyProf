import 'package:flutter/material.dart';
import '../outils/myStyle.dart';
import '../widgets/slederPage.dart';
import 'home_screen.dart';

class LaunchApp extends StatefulWidget {
  static const routeName = '/';
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<LaunchApp> {
  final int _numPages = 4;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<Widget> _myIndicatorList() {
    List<Widget> myList = [];
    for (int i = 0; i < _numPages; i++) {
      Widget myWid = i == _currentPage ? myIndetor(true) : myIndetor(false);
      myList.add(myWid);
    }
    return myList;
  }

  Widget myIndetor(bool isCurrent) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 750),
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      height: 8.0,
      width: isCurrent ? 20.0 : 12.0,
      decoration: BoxDecoration(
        color: isCurrent ? Colors.white : Color(0xFF7B51D3),
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
  

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidht = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: deviceHeight,
        width: deviceWidht,
        color: themeColor,
        child: Padding(
          padding: EdgeInsets.only(top: 40),
          child: Column(
            children: [
              // Bouton Annuler L'introduction
              Container(
                child: Container(
                  height: 50,
                  alignment: Alignment.topRight,
                  child: FlatButton(
                    onPressed: () {
                      Navigator.of(context)
                          .pushReplacementNamed(HomeScreen.rooteName);
                    },
                    child: Text(
                      "Annuler ",
                      style: TextStyle(
                          color: bgColor, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              //Container Du Page View
              Container(
                //margin: EdgeInsets.only(top: 10),
                height: deviceHeight - 240,
                child: PageView(
                  controller: _pageController,
                  onPageChanged: (int page) {
                    setState(() {
                      _currentPage = page;
                      print(_currentPage);
                    });
                  },
                  children: [
                    SlederPage(
                        "trouvez \n le professeur parfait",
                        "Consultez librement les profils et contactez votre fantastique professeur selon vos critères (tarifs, diplôme, avis, cours à domicile ou par webcam)",
                        "assets/images/a.svg"),
                    SlederPage(
                      "Apprenez \n en toute confiance",
                      "Devenez indépendant, enseignez à votre rythme, fixez vos tarifs sans commission et rencontrez des milliers d’élèves motivés !",
                      "assets/images/d.svg",
                    ),
                    SlederPage(
                      "Apprenez \ntout ce que vous voulez",
                      "Echangez avec votre professeur pour lui préciser vos besoins et vos disponibilités. Programmez vos cours et réglez-les en toute sécurité depuis votre messagerie.",
                      "assets/images/b.svg",
                    ),
                    SlederPage(
                      "Apprenez \n d'où vous voulez",
                      "Echangez avec votre professeur pour lui préciser vos besoins et vos disponibilités. Programmez vos cours et réglez-les en toute sécurité depuis votre messagerie.",
                      "assets/images/c.svg",
                    ),
                  ],
                ),
              ),
              //Row des boutons d'indication 
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: _myIndicatorList()),
              //Row du Nex Botom 
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  AnimatedOpacity(
                    duration: Duration(milliseconds: 600),
                    opacity: _currentPage == _numPages - 1 ? 0 : 1,
                    child: FlatButton(
                      onPressed: () {
                        setState(() {
                          _pageController.nextPage(
                            duration: Duration(milliseconds: 750),
                            curve: Curves.ease,
                          );
                        });
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "Next",
                            style: TextStyle(color: bgColor),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: bgColor,
                            size: 18,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              //Bouton Commencé 
              AnimatedOpacity(
                duration: Duration(milliseconds: 600),
                opacity: _currentPage != _numPages - 1 ? 0 : 1,
                child: Container(
                  // color: Colors.red,
                  margin: EdgeInsets.only(top: 25, bottom: 15),
                  width: deviceWidht - 50 ,
                  
                  // alignment: Alignment.center,
                  child: RaisedButton(
                    
                    child: Text(
                      "Commencé ",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    color: accanceColor,
                    onPressed: () {
                      Navigator.of(context)
                          .pushReplacementNamed(HomeScreen.rooteName);
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
