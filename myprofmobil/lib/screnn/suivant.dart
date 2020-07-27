import 'package:flutter/material.dart';
import 'package:myprofmobil/outils/myStyle.dart';
import 'package:myprofmobil/widgets/CoursPlaceStep.dart';
import 'package:myprofmobil/widgets/PriceAndNumberStep.dart';
import 'package:myprofmobil/widgets/SousSpecialiteStep.dart';
import 'package:myprofmobil/widgets/SpecialiterSteep.dart';
import 'package:myprofmobil/widgets/coursModeStep.dart';
import 'package:myprofmobil/widgets/finalStep.dart';
import 'package:myprofmobil/widgets/imageStep.dart';
import 'package:myprofmobil/widgets/socialBtn.dart';
import 'package:myprofmobil/widgets/titleStep.dart';
import '../widgets/multiSelectChip.dart';

class Suivant extends StatefulWidget {
  static const routeName = "suivant";

  @override
  _SuivantState createState() => _SuivantState();
}

class _SuivantState extends State<Suivant> {
  String radioItem = '';

  PageController _controller = PageController();

  List<String> selectedChoices = List();
  bool isSelected = false;
  bool singleCourMode = false;
  bool multiCourMode = false;


  List<String> returnList;
  //int _defaultChoiceIndex = 1;

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    var item;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            //AppBar Page
            Container(
              height: deviceHeight * .10,
              margin: EdgeInsets.only(top: 15),
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    width: 100,
                  ),
                  Text(
                    "MyProf",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 28,
                        fontFamily: 'BAARS',
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
            //End AppBarre
            //Page View Container
            Container(
              height: deviceHeight *.95 - 60,
              child: ListView(children: <Widget>[
                   Container(
              // color: Colors.red,
              height: deviceHeight * .75 - 50,
              child: PageView(
                controller: _controller,
                physics: NeverScrollableScrollPhysics(),
                children: <Widget>[
                  SpecialiteSped(),
                  SousSpecialiteStep(),// PAGE 3
                  TitleStep(),
                  CoursModeStep(),
                  PlaceCours(),
                  PriceAndNumber(),
                  ImageStep(),
                  FinalStep()
                  ],
              ),
            ),
            //Bouton de navigation
            Container(
              height: deviceHeight * .15,
              // color: Colors.red,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      child: Container(
                        width: 150,
                        height: 40.0,
                        decoration: BoxDecoration(
                            color: themeColor.withOpacity(0.9)
                            /*gradient: LinearGradient(
                                        begin: Alignment.centerLeft,
                                        end: Alignment.centerRight,
                                        colors: [
                                          Colors.deepPurple,
                                          Color.fromRGBO(133, 136, 241, 1)
                                        ]),*/
                            ),
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () {
                              _controller.previousPage(
                                  duration: Duration(milliseconds: 300),
                                  curve: Curves.ease);
                            },
                            child: Center(
                              child: Text(
                                'Retour',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      child: Container(
                        width: 150,
                        height: 40.0,
                        decoration: BoxDecoration(
                            color: themeColor.withOpacity(0.9)
                            /*gradient: LinearGradient(
                                        begin: Alignment.centerLeft,
                                        end: Alignment.centerRight,
                                        colors: [
                                          Colors.deepPurple,
                                          Color.fromRGBO(133, 136, 241, 1)
                                        ]),*/
                            ),
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () {
                              _controller.nextPage(
                                  duration: Duration(milliseconds: 300),
                                  curve: Curves.ease);
                            },
                            child: Center(
                              child: Text(
                                'Suivant',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          
              ],),
            )
         ],
        ),
      ),
    );
  }
}
