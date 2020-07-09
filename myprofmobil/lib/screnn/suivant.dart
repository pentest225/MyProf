import 'dart:io';
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:myprofmobil/outils/myStyle.dart';
import 'package:myprofmobil/screnn/dashboard.dart';
import '../widgets/multiSelectChip.dart';

import 'package:percent_indicator/percent_indicator.dart';


import 'package:image_picker/image_picker.dart';

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
  File _image;
  bool _loadImage = false;
  final picker = ImagePicker();

  Future getImage() async {
    try {
      final pickedFile = await picker.getImage(source: ImageSource.camera);
      print("get Image ${pickedFile.runtimeType}");
      print("get Image ${pickedFile.path}");
      setState(() {
        _image = File(pickedFile.path);
        print(_image.runtimeType);
      });
    } catch (error) {
      print("Error to picke Image ${error.toString()}");
    }
  }

  Future getImageFromFils() async {
    try {
      setState(() {
        
      _loadImage = true;
      });
      final pickedFile = await picker.getImage(source: ImageSource.gallery);
      _image = File(pickedFile.path);
      print("Image From Galerie ${_image}");
       setState(() {
      _loadImage = false;
      });
    } catch (error) {
      print("Error to get Image from fils ${error.toString()}");
    }
  }

  List<String> specialite = [
    'Programmation',
    'Initiation Informatique',
    'Bureautique',
    'Photoshop',
    'Graphisme',
    'Word',
    'Powerpoint',
    'Excel',
    'Animation 3D',
    'Base de donnée',
  ];

  List<String> competences = [
    'JavaScript',
    'Python',
    'Html',
    'Intelligence artificielle',
    'Css',
    'PostgreSql',
    'Visual basic',
    'Flutter',
    'Golang',
    'PHP',
  ];
  List<String> reportList = [
    "Not relevant",
    "Illegal",
    "Spam",
    "Offensive",
    "Uncivil"
  ];
  List<String> returnList;
  //int _defaultChoiceIndex = 1;
  _showReportDialog() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          //Here we will build the content of the dialog
          return AlertDialog(
            title: Text("Report Video"),
            content: MultiSelectedChip(reportList),
            actions: <Widget>[
              FlatButton(
                child: Text("Report"),
                onPressed: () => Navigator.of(context).pop(),
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    var item;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: themeColor,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('MyProfs'),
        centerTitle: true,
        elevation: 0,
      ),
      body: PageView(
        controller: _controller,
        physics: NeverScrollableScrollPhysics(),
        children: <Widget>[
          // PAGE 1
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FAProgressBar(
                      progressColor: accanceColor,
                      currentValue: 15,
                      displayText: '%',
                      animatedDuration: Duration(seconds: 1),
                      maxValue: 100,
                    ),
                  ),
                  /*Padding(
                    padding: EdgeInsets.all(8.0),
                    child: new LinearPercentIndicator(
                      width: MediaQuery.of(context).size.width/1.1,
                      animation: true,
                      lineHeight: 20.0,
                      animationDuration: 2000,
                      percent: 0.15,
                      center: Text("15.0%", style: TextStyle(
                          color: Colors.white
                      ),),
                      linearStrokeCap: LinearStrokeCap.roundAll,
                      progressColor: accanceColor,
                    ),
                  ),*/
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Informatique",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 28,
                            fontFamily: 'BAARS',
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              color: themeColor,
                              borderRadius: BorderRadius.circular(5)),
                          child: Icon(
                            Icons.desktop_mac,
                            size: 20,
                            color: Colors.white,
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    "Veuillez clicker sur votre spécialité...",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 18,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  MultiSelectedChip(
                    specialite,
                    myReturnList: (myList) {
                      setState(() {
                        returnList = myList;
                      });
                    },
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      child: Container(
                        width: 250,
                        height: 40.0,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [
                                Colors.deepPurple,
                                Color.fromRGBO(133, 136, 241, 1)
                              ]),
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
            ),
          ),
          //PAGE 2
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FAProgressBar(
                      progressColor: accanceColor,
                      currentValue: 25,
                      displayText: '%',
                     animatedDuration: Duration(seconds: 1),
                      maxValue: 100,
                    ),
                  ),
                  /*Padding(
                    padding: EdgeInsets.all(8.0),
                    child: new LinearPercentIndicator(
                      width: MediaQuery.of(context).size.width/1.1,
                      animation: true,
                      lineHeight: 20.0,
                      animationDuration: 2000,
                      percent: 0.25,
                      center: Text("25.0%", style: TextStyle(
                          color: Colors.white
                      ),),
                      linearStrokeCap: LinearStrokeCap.roundAll,
                      progressColor: accanceColor,
                    ),
                  ),*/
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Informatique",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 28,
                            fontFamily: 'BAARS',
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              color: themeColor,
                              borderRadius: BorderRadius.circular(5)),
                          child: Icon(
                            Icons.desktop_mac,
                            size: 20,
                            color: Colors.white,
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    "Veuillez clicker sur vos compétences (5maximums)...",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 18,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  MultiSelectedChip(
                    competences,
                    myReturnList: (myList) {
                      setState(() {
                        returnList = myList;
                      });
                    },
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          child: Container(
                            width: 150,
                            height: 40.0,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                  colors: [
                                    Colors.deepPurple,
                                    Color.fromRGBO(133, 136, 241, 1)
                                  ]),
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
                              gradient: LinearGradient(
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                  colors: [
                                    Colors.deepPurple,
                                    Color.fromRGBO(133, 136, 241, 1)
                                  ]),
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
                ],
              ),
            ),
          ),
          // PAGE 3
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FAProgressBar(
                    progressColor: accanceColor,
                    currentValue: 30,
                    displayText: '%',
                    animatedDuration: Duration(seconds: 1),
                    maxValue: 100,
                  ),
                ),
                /*Padding(
                  padding: EdgeInsets.all(8.0),
                  child: new LinearPercentIndicator(
                    width: MediaQuery.of(context).size.width/1.1,
                    animation: true,
                    lineHeight: 20.0,
                    animationDuration: 2000,
                    percent: 0.30,
                    center: Text("30.0%", style: TextStyle(
                        color: Colors.white
                    ),),
                    linearStrokeCap: LinearStrokeCap.roundAll,
                    progressColor: accanceColor,
                  ),
                ),*/
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Informatique",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 28,
                          fontFamily: 'BAARS',
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            color: themeColor,
                            borderRadius: BorderRadius.circular(5)),
                        child: Icon(
                          Icons.desktop_mac,
                          size: 20,
                          color: Colors.white,
                        )),
                  ],
                ),
                SizedBox(
                  height: 60,
                ),
                Text(
                  "Quel type de cours souhaitez-vous donner?",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        setState(() {
                          singleCourMode = !singleCourMode;
                        });
                      },
                      child: Card(
                        elevation: singleCourMode ? 15 : 0,
                        color: singleCourMode
                            ? themeColor.withOpacity(.5)
                            : bgColor,
                        child: Container(
                          height: 150,
                          width: 160,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5)),
                          child: Column(
                            children: <Widget>[
                              SizedBox(
                                height: 15,
                              ),
                              Icon(
                                Icons.person,
                                size: 60,
                                color: singleCourMode
                                    ? Colors.white
                                    : Color.fromRGBO(17, 122, 139, 1),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Cours individuel',
                                style: TextStyle(
                                    color: singleCourMode
                                        ? Colors.white
                                        : accanceColor,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Roboto'),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          multiCourMode = !multiCourMode;
                        });
                      },
                      child: Card(
                        elevation: multiCourMode ? 15 : 0,
                        color: multiCourMode
                            ? themeColor.withOpacity(.5)
                            : bgColor,
                        child: Container(
                          height: 150,
                          width: 160,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5)),
                          child: Column(
                            children: <Widget>[
                              SizedBox(
                                height: 15,
                              ),
                              Icon(
                                Icons.people,
                                size: 60,
                                color: singleCourMode
                                    ? Colors.white
                                    : Color.fromRGBO(17, 122, 139, 1),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Cours en groupe',
                                style: TextStyle(
                                    color: multiCourMode
                                        ? Colors.white
                                        : accanceColor,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Roboto'),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 70,
                ),
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        child: Container(
                          width: 150,
                          height: 40.0,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Colors.deepPurple,
                                  Color.fromRGBO(133, 136, 241, 1)
                                ]),
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
                            gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Colors.deepPurple,
                                  Color.fromRGBO(133, 136, 241, 1)
                                ]),
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
              ],
            ),
          ),
          // PAGE 4
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FAProgressBar(
                      progressColor: accanceColor,
                      currentValue:45,
                      displayText: '%',
                      animatedDuration: Duration(seconds: 1),
                      maxValue: 100,
                    ),
                  ),
                  /*Padding(
                    padding: EdgeInsets.all(8.0),
                    child: new LinearPercentIndicator(
                      width: MediaQuery.of(context).size.width/1.1,
                      animation: true,
                      lineHeight: 20.0,
                      animationDuration: 2000,
                      percent: 0.45,
                      center: Text("45.0%", style: TextStyle(
                          color: Colors.white
                      ),),
                      linearStrokeCap: LinearStrokeCap.roundAll,
                      progressColor: accanceColor,
                    ),
                  ),*/
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Informatique",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 28,
                            fontFamily: 'BAARS',
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              color: themeColor,
                              borderRadius: BorderRadius.circular(5)),
                          child: Icon(
                            Icons.desktop_mac,
                            size: 20,
                            color: Colors.white,
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Trouvons un beau titre pour votre annonce',
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 18,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                      padding: EdgeInsets.only(left: 12),
                      //smargin: EdgeInsets.only(left: 15),
                      height: 100,
                      width: MediaQuery.of(context).size.width / 1.05,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey, width: 1),
                      ),
                      child: TextField(
                        //keyboardType: TextInputType.multiline,
                        maxLines: null,
                        decoration: InputDecoration(
                          hintText:
                              'Ex: Ingénieur informatique donne des cours...',
                          hintStyle:
                              TextStyle(color: Colors.black54, fontSize: 18),
                          border: InputBorder.none,
                          //icon: Icon(Icons.mail, size: 18, color:  Color.fromRGBO(17, 122, 139, 1)),
                        ),
                      )),
                  SizedBox(
                    height: 35,
                  ),
                  Container(
                    height: 150,
                    width: MediaQuery.of(context).size.width / 1.2,
                    decoration: BoxDecoration(
                        color: accanceColor,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Attention:',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontFamily: 'BAARS',
                              fontWeight: FontWeight.w600),
                        ),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Votre titre est la clef de voûte de votre annonce. Bichonnez-le, il doit être accrocheur et contenir au moins 12 mots, comme'
                              'L’intitulé des matières que vous enseignez,  Vos spécificités (diplôme, méthode, etc.)',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontFamily: 'BAARS',
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          child: Container(
                            width: 150,
                            height: 40.0,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                  colors: [
                                    Colors.deepPurple,
                                    Color.fromRGBO(133, 136, 241, 1)
                                  ]),
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
                              gradient: LinearGradient(
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                  colors: [
                                    Colors.deepPurple,
                                    Color.fromRGBO(133, 136, 241, 1)
                                  ]),
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
                ],
              ),
            ),
          ),
          // PAGE 5
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  SizedBox(height: 30,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FAProgressBar(
                      progressColor: accanceColor,
                      currentValue: 60,
                      displayText: '%',
                      animatedDuration: Duration(seconds: 1),
                      maxValue: 100,
                    ),
                  ),
                  /*Padding(
                    padding: EdgeInsets.all(8.0),
                    child: new LinearPercentIndicator(
                      width: MediaQuery.of(context).size.width/1.1,
                      animation: true,
                      lineHeight: 20.0,
                      animationDuration: 2000,
                      percent: 0.60,
                      center: Text("60.0%", style: TextStyle(
                          color: Colors.white
                      ),),
                      linearStrokeCap: LinearStrokeCap.roundAll,
                      progressColor: accanceColor,
                    ),
                  ),*/
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                      alignment: Alignment.center,
                      child: SvgPicture.asset(
                        "assets/images/c.svg",
                        width: MediaQuery.of(context).size.width / 2.1,
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Ou se déroulent vos cours ?",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 25,
                        fontFamily: 'BAARS',
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 1.9,
                    width: MediaQuery.of(context).size.width / 1.1,
                    color: Colors.grey.withOpacity(0.1),
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 20),
                          height: 100,
                          width: 300,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: RadioListTile(
                            activeColor: accanceColor,
                            title: Text(
                              "je peux encadrer l'élève à mon domicile",
                              style: TextStyle(
                                  color: Colors.black45,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                            value: "je peux encadrer l'élève à mon domicile",
                            groupValue: radioItem,
                            onChanged: (val) {
                              setState(() {
                                radioItem = val;
                              });
                            },
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 20),
                          height: 100,
                          width: 300,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: RadioListTile(
                            activeColor: accanceColor,
                            title: Text(
                              "je peux me déplacer chez l'élève",
                              style: TextStyle(
                                  color: Colors.black45,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                            value: "je peux me déplacer chez l'élève",
                            groupValue: radioItem,
                            onChanged: (val) {
                              setState(() {
                                radioItem = val;
                              });
                            },
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 20),
                          height: 100,
                          width: 300,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: RadioListTile(
                            activeColor: accanceColor,
                            title: Text(
                              "je peux donner des cours par webcam",
                              style: TextStyle(
                                  color: Colors.black45,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                            value: "je peux donner des cours par webcam",
                            groupValue: radioItem,
                            onChanged: (val) {
                              setState(() {
                                radioItem = val;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          child: Container(
                            width: 150,
                            height: 40.0,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                  colors: [
                                    Colors.deepPurple,
                                    Color.fromRGBO(133, 136, 241, 1)
                                  ]),
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
                              gradient: LinearGradient(
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                  colors: [
                                    Colors.deepPurple,
                                    Color.fromRGBO(133, 136, 241, 1)
                                  ]),
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
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          ),
          // PAGE 6
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: Column(
              children: <Widget>[
                SizedBox(height: 40,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FAProgressBar(
                    progressColor: accanceColor,
                    currentValue: 75,
                    displayText: '%',
                    animatedDuration: Duration(seconds: 1),
                    maxValue: 100,
                  ),
                ),
                /*Padding(
                  padding: EdgeInsets.all(8.0),
                  child: new LinearPercentIndicator(
                    width: MediaQuery.of(context).size.width/1.1,
                    animation: true,
                    lineHeight: 20.0,
                    animationDuration: 2000,
                    percent: 0.75,
                    center: Text("75.0%", style: TextStyle(
                        color: Colors.white
                    ),),
                    linearStrokeCap: LinearStrokeCap.roundAll,
                    progressColor: accanceColor,
                  ),
                ),*/
                SizedBox(
                  height: 30,),
                SizedBox(
                  height: 80,

                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Quel est votre tarif pour une heure de cours ?",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 25,
                        fontFamily: 'BAARS',
                        fontWeight: FontWeight.w700),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(left: 20),
                        height: MediaQuery.of(context).size.height / 12,
                        width: MediaQuery.of(context).size.width / 1.8,
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.1),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                            )),
                        child: Center(
                          child: TextField(
                            keyboardType: TextInputType.number,
                            cursorColor: Colors.grey,
                            decoration: InputDecoration(
                                hintText: '2500', border: InputBorder.none),
                          ),
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height / 12,
                        width: MediaQuery.of(context).size.width / 4,
                        decoration: BoxDecoration(
                            color: accanceColor,
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(10),
                              topRight: Radius.circular(10),
                            )),
                        child: Center(
                          child: Text(
                            'Frs/h',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        child: Container(
                          width: 150,
                          height: 40.0,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Colors.deepPurple,
                                  Color.fromRGBO(133, 136, 241, 1)
                                ]),
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
                            gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Colors.deepPurple,
                                  Color.fromRGBO(133, 136, 241, 1)
                                ]),
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
              ],
            ),
          ),
          // PAGE 7
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: Column(
              children: <Widget>[
                SizedBox(height: 40,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FAProgressBar(
                    progressColor: accanceColor,
                    currentValue: 85,
                    displayText: '%',
                    animatedDuration: Duration(seconds: 1),
                    maxValue: 100,
                  ),
                ),
               /* Padding(
                  padding: EdgeInsets.all(8.0),
                  child: new LinearPercentIndicator(
                    width: MediaQuery.of(context).size.width/1.1,
                    animation: true,
                    lineHeight: 20.0,
                    animationDuration: 2000,
                    percent: 0.85,
                    center: Text("85.0%", style: TextStyle(
                        color: Colors.white
                    ),),
                    linearStrokeCap: LinearStrokeCap.roundAll,
                    progressColor: accanceColor,
                  ),
                ),*/
                SizedBox(
                  height: 30,),
                SizedBox(
                  height: 120,

                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Coordonnées pour vous contacter",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 25,
                        fontFamily: 'BAARS',
                        fontWeight: FontWeight.w700),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.only(left: 20),
                  height: MediaQuery.of(context).size.height / 12,
                  width: MediaQuery.of(context).size.width / 1.2,
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(5)),
                  child: Center(
                    child: TextField(
                      keyboardType: TextInputType.number,
                      cursorColor: Colors.grey,
                      decoration: InputDecoration(
                          hintText: 'Numéro de téléphone',
                          border: InputBorder.none),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        child: Container(
                          width: 150,
                          height: 40.0,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Colors.deepPurple,
                                  Color.fromRGBO(133, 136, 241, 1)
                                ]),
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
                            gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Colors.deepPurple,
                                  Color.fromRGBO(133, 136, 241, 1)
                                ]),
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
              ],
            ),
          ),
          //PAGE 8
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  SizedBox(height: 40,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FAProgressBar(
                      progressColor: accanceColor,
                      currentValue: 90,
                      displayText: '%',
                      animatedDuration: Duration(seconds: 1),
                      maxValue: 100,
                    ),
                  ),
                  /*Padding(
                    padding: EdgeInsets.all(8.0),
                    child: new LinearPercentIndicator(
                      width: MediaQuery.of(context).size.width/1.1,
                      animation: true,
                      lineHeight: 20.0,
                      animationDuration: 2000,
                      percent: 0.90,
                      center: Text("90.0%", style: TextStyle(
                          color: Colors.white
                      ),),
                      linearStrokeCap: LinearStrokeCap.roundAll,
                      progressColor: accanceColor,
                    ),
                  ),*/
                  SizedBox(
                    height: 30,),
                  SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Votre plus beau profil",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 25,
                          fontFamily: 'BAARS',
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                        color: themeColor,
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage(_image == null
                                ? 'assets/images/books.jpg'
                                : _image.path),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    height: 20,
                    child: _loadImage ?Text("Loading ...",style: TextStyle(color: themeColor),):null,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        height: MediaQuery.of(context).size.height / 18,
                        // width: MediaQuery.of(context).size.width / 25,
                        decoration: BoxDecoration(
                            color: accanceColor,
                            borderRadius: BorderRadius.circular(100)),
                        child: FlatButton.icon(
                            onPressed: getImageFromFils,
                            icon: Icon(Icons.camera_alt),
                            label: Text(
                              'Télécharger',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14),
                            )),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height / 18,
                        width: MediaQuery.of(context).size.width / 3,
                        decoration: BoxDecoration(
                            color: accanceColor,
                            borderRadius: BorderRadius.circular(100)),
                        child: Center(
                            child: Text(
                          'Récadrer',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 14),
                        )),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          child: Container(
                            width: 100,
                            height: 40.0,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                  colors: [
                                    Colors.deepPurple,
                                    Color.fromRGBO(133, 136, 241, 1)
                                  ]),
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
                            width: 210,
                            height: 40.0,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                  colors: [
                                    Colors.deepPurple,
                                    Color.fromRGBO(133, 136, 241, 1)
                                  ]),
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
                                    'Terminer mon annonce',
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
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          ),
          //PAFE 9
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FAProgressBar(
                      progressColor: accanceColor,
                      currentValue: 100,
                      displayText: '%',
                      animatedDuration: Duration(seconds: 1),
                      maxValue: 100,
                    ),
                  ),
                  /*Padding(
                    padding: EdgeInsets.all(8.0),
                    child: new LinearPercentIndicator(
                      width: MediaQuery.of(context).size.width/1.1,
                      animation: true,
                      lineHeight: 20.0,
                      animationDuration: 2000,
                      percent: 1.0,
                      center: Text("100.0%", style: TextStyle(
                        color: Colors.white
                      ),),
                      linearStrokeCap: LinearStrokeCap.roundAll,
                      progressColor: accanceColor,
                    ),
                  ),*/
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Felicitations votre annonce est complète !!!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 25,
                          fontFamily: 'BAARS',
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                      padding: EdgeInsets.all(12),
                      child: Text(
                        "Dernière petite chose : enrichissez la avec des recommandations d'amis, de collègues ou d'anciens élèves..."
                        "Plus vous en avez, plus elle sera appreciée et mieux elle sera positionnée .",
                        style: TextStyle(color: Colors.black54, fontSize: 18),
                      )),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 1,
                    width: MediaQuery.of(context).size.width / 1.1,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                            color: Colors.grey.withOpacity(0.2), width: 1)),
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                              color: themeColor,
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage('assets/images/books.jpg'),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'DAGOUAGA',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height / 18,
                          width: MediaQuery.of(context).size.width / 4,
                          decoration: BoxDecoration(
                              color: accanceColor,
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                              child: Text(
                            '100frs/h',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 14),
                          )),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Center(
                              child: Text(
                            'Simplissime, demandez des recommandations à vos amis via :',
                            style: TextStyle(
                                fontFamily: 'BAARS',
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.black54),
                          )),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            padding: EdgeInsets.only(left: 10),
                            height: 50,
                            width: MediaQuery.of(context).size.width / 1.2,
                            decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(100)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.message,
                                  size: 18,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'SMS',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontFamily: 'BAARS',
                                      fontWeight: FontWeight.w700),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            padding: EdgeInsets.only(left: 10),
                            height: 50,
                            width: MediaQuery.of(context).size.width / 1.2,
                            decoration: BoxDecoration(
                                color: Colors.pink,
                                borderRadius: BorderRadius.circular(100)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.mail,
                                  size: 18,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Mail',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontFamily: 'BAARS',
                                      fontWeight: FontWeight.w700),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            padding: EdgeInsets.only(left: 10),
                            height: 50,
                            width: MediaQuery.of(context).size.width / 1.2,
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(59, 89, 152, 1),
                                borderRadius: BorderRadius.circular(100)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  'f',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 18),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  'Facebook',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontFamily: 'BAARS',
                                      fontWeight: FontWeight.w700),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            padding: EdgeInsets.only(left: 10),
                            height: 50,
                            width: MediaQuery.of(context).size.width / 1.2,
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(93, 153, 251, 1),
                                borderRadius: BorderRadius.circular(100)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.message,
                                  size: 18,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Messenger',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontFamily: 'BAARS',
                                      fontWeight: FontWeight.w700),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            padding: EdgeInsets.only(left: 10),
                            height: 50,
                            width: MediaQuery.of(context).size.width / 1.2,
                            decoration: BoxDecoration(
                                color: accanceColor,
                                borderRadius: BorderRadius.circular(100)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  height: 18,
                                  width: 18,
                                  color: Colors.white,
                                  child: Center(
                                      child: Text(
                                    'in',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: accanceColor,
                                        fontSize: 15),
                                  )),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Linkedin',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontFamily: 'BAARS',
                                      fontWeight: FontWeight.w700),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      child: Container(
                        width: 200,
                        height: 40.0,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [
                                Colors.deepPurple,
                                Color.fromRGBO(133, 136, 241, 1)
                              ]),
                        ),
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Dashboard()));
                            },
                            child: Center(
                              child: Text(
                                'Terminer',
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
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
