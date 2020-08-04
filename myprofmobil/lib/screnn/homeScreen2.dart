import 'dart:math';

import 'package:flutter/material.dart';
import 'package:myprofmobil/outils/myStyle.dart';
import 'package:myprofmobil/pages/interface1.dart';
import '../screnn/searchPage.dart';
import 'demande.dart';
import 'pou.dart';
import 'profPage.dart';
import 'package:myprofmobil/widgets/homeSteps.dart';

class HomeScreen2 extends StatefulWidget {

  static const rooteName = '/accueil';

  @override
  _HomeScreen2State createState() => _HomeScreen2State();
}

class _HomeScreen2State extends State<HomeScreen2> {

  bool onTapInputMatierre;
  TextEditingController matierreController = TextEditingController();
  AnimationController _controller;
  Animation<double> _animation;
  bool formSubmited = false;

  @override
  Widget build(BuildContext context) {

    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      /*appBar: AppBar(
        backgroundColor: Colors.transparent,
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
            child: Text('MyProf',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
          )
        ],
      ),*/
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Scaffold(
              appBar: AppBar(
          backgroundColor: Colors.transparent,
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
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                color: fondcolor,
                child: SingleChildScrollView(
                  child: Stack(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Container(
                            height: MediaQuery.of(context).size.height/1.8,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              //color: Colors.teal,
                              image: DecorationImage(
                                  image: AssetImage(backImage),
                                  fit: BoxFit.cover,
                                  colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken)
                              ),
                            ),
                            child: Column(
                              children: <Widget>[
                                SizedBox(height: 80,),
                                Container(
                                  margin: EdgeInsets.only(right: 20),
                                  child: RichText(
                                    text: TextSpan(
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 35, fontFamily: 'BAARS'),
                                        children: [
                                          TextSpan(text: "Trouvez le Professeur"),
                                          TextSpan(text: "\n"),
                                          TextSpan(
                                              text: "Parfait",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w700, fontFamily: 'BAARS', color: themeColor)),
                                        ]),
                                  ),
                                ),
                                SizedBox(height: 60,),
                                InkWell(
                                  onTap: () {
                                    Navigator.of(context).pushNamed(
                                      SearchPage.routeName,
                                    );
                                  },
                                  child: Container(
                                    height: 50,
                                    width: MediaQuery.of(context).size.width / 1.1,
                                    decoration: BoxDecoration(
                                        color: Color(0xfff1f1f1),
                                        borderRadius: BorderRadius.all(Radius.circular(10))),
                                    child: Row(children: <Widget>[
                                      Flexible(
                                          flex: 4,
                                          child: Container(
                                              padding: EdgeInsets.only(top: 3, left: 10),
                                              alignment: Alignment.center,
                                              child: Row(
                                                children: [
                                                  Flexible(
                                                      child: Icon(
                                                        Icons.search,
                                                        size: 22,
                                                      )),
                                                  Flexible(
                                                    flex: 2,
                                                    child: Text("essayer Maths,.."),
                                                  ),
                                                ],
                                              ))),
                                      Flexible(
                                          flex: 2,
                                          child: Container(
                                            alignment: Alignment.center,
                                            margin: EdgeInsets.all(4),
                                            width: MediaQuery.of(context).size.width,
                                            height: MediaQuery.of(context).size.height,
                                            child: Text(
                                              "Rechercher",
                                              style: TextStyle(color: Colors.white),
                                            ),
                                            decoration: BoxDecoration(
                                                color: themeColor,
                                                borderRadius: BorderRadius.all(Radius.circular(5))),
                                          )),
                                    ]),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 30,),
                          /*Container(
                      margin: EdgeInsets.only(right: 30),
                      child: Text(
                        "Apprenez en toute confiance",
                        style: TextStyle(
                          color: accanceColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),*/
                          Container(
                            padding: EdgeInsets.all(8),
                            height: MediaQuery.of(context).size.height / 2.2,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: <Widget>[
                                Card(
                                  child: Container(
                                    height: 250,
                                    width: MediaQuery.of(context).size.width/1.6,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: fondcolor,
                                        border: Border.all(color: Colors.grey.withOpacity(0.3), width: 1),
                                        image: DecorationImage(
                                            image: AssetImage('assets/images/if.png'),
                                            fit: BoxFit.cover,
                                            colorFilter: ColorFilter.mode(Colors.black54, BlendMode.darken)
                                        )
                                    ),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        SizedBox(height: 10,),
                                        Center(
                                            child: Icon(Icons.perm_identity, color: Colors.white, size: 55,)),
                                        SizedBox(height: 20,),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Center(
                                            child: Text(
                                              'Le professeur adéquat',
                                              style: TextStyle(
                                                  color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 20,),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Center(
                                            child: Text(
                                              'Consultez librement les profils et contactez votre fantastique professeur selon vos critères (tarifs, diplôme, avis, cours à domicile ou par webcam).',
                                              style: TextStyle(
                                                  fontFamily: 'BAARS',
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.white),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Card(
                                  child: Container(
                                    height: 300,
                                    width: MediaQuery.of(context).size.width/1.6,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: fondcolor,
                                        border: Border.all(color: Colors.grey.withOpacity(0.3), width: 1),
                                        image: DecorationImage(
                                            image: AssetImage('assets/images/elif.png'),
                                            fit: BoxFit.cover,
                                            colorFilter: ColorFilter.mode(Colors.black54, BlendMode.darken)
                                        )
                                    ),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        SizedBox(height: 10,),
                                        Center(
                                            child: Icon(Icons.book, color: Colors.white, size: 55,)),
                                        SizedBox(height: 20,),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            'Organisez vos cours',
                                            style: TextStyle(
                                                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
                                          ),
                                        ),
                                        SizedBox(height: 10,),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            'Echangez avec votre professeur pour lui préciser vos besoins et vos disponibilités. Programmez vos cours et réglez-les en toute sécurité depuis votre messagerie.',
                                            style: TextStyle(
                                                fontFamily: 'BAARS',
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.white),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Card(
                                  child: Container(
                                    height: 300,
                                    width: MediaQuery.of(context).size.width/1.6,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: fondcolor,
                                        border: Border.all(color: Colors.grey.withOpacity(0.3), width: 1),
                                        image: DecorationImage(
                                            image: AssetImage('assets/images/else.png'),
                                            fit: BoxFit.cover,
                                            colorFilter: ColorFilter.mode(Colors.black54, BlendMode.darken)
                                        )
                                    ),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        SizedBox(height: 10,),
                                        Center(
                                            child: Icon(Icons.book, color: Colors.white, size: 55,)),
                                        SizedBox(height: 20,),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            'Vivez de nouvelles expériences',
                                            style: TextStyle(
                                                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
                                          ),
                                        ),
                                        SizedBox(height: 10,),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            'Le passe Élève vous donne un accès illimité à tous les professeurs, coachs et masterclass pendant 30 jours. Profitez-en pour découvrir de nouvelles passions !',
                                            style: TextStyle(
                                                fontFamily: 'BAARS',
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.white),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 20,),
                          Container(
                            margin: EdgeInsets.only(right: 30),
                            child: Text(
                              "Apprenez ce que vous voulez",
                              style: TextStyle(
                                color: accanceColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => InterfaceOne()));
                            },
                            child: Container(
                                height: MediaQuery.of(context).size.height / 3.5 ,
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: <Widget>[
                                    Stack(
                                      children: <Widget>[
                                        Container(
                                            margin: EdgeInsets.all(5),
                                            height: 150,
                                            width: MediaQuery.of(context).size.width / 1.6,
                                            decoration: BoxDecoration(
                                              color: Colors.grey.withOpacity(.3),
                                              borderRadius: BorderRadius.all(Radius.circular(10)),
                                              /*image: DecorationImage(
                                        image: AssetImage('assets/images/code.jpg'),
                                        fit: BoxFit.cover,
                                        colorFilter: ColorFilter.mode(
                                            Colors.black45, BlendMode.darken))*/),
                                            child: Image.asset('assets/images/html.jpg', fit: BoxFit.cover, colorBlendMode: BlendMode.darken,)
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(left: 45, top: 135, right: 45),
                                          height: 40,
                                          width: 150,
                                          color: themeColor.withOpacity(0.8),
                                          child: Center(
                                            child: Text(
                                              'Informatique',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 17),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    Stack(
                                      children: <Widget>[
                                        Container(
                                            margin: EdgeInsets.all(5),
                                            height: 150,
                                            width: MediaQuery.of(context).size.width / 1.6,
                                            decoration: BoxDecoration(
                                              color: Colors.grey.withOpacity(.3),
                                              borderRadius: BorderRadius.all(Radius.circular(10)),
                                              /*image: DecorationImage(
                                        image: AssetImage('assets/images/code.jpg'),
                                        fit: BoxFit.cover,
                                        colorFilter: ColorFilter.mode(
                                            Colors.black45, BlendMode.darken))*/),
                                            child: Image.asset('assets/images/english.jpg', fit: BoxFit.cover, colorBlendMode: BlendMode.darken,)
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(left: 45, top: 135, right: 45),
                                          height: 40,
                                          width: 150,
                                          color: themeColor.withOpacity(0.8),
                                          child: Center(
                                            child: Text(
                                              'Anglais',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 17),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    Stack(
                                      children: <Widget>[
                                        Container(
                                            margin: EdgeInsets.all(5),
                                            height: 150,
                                            width: MediaQuery.of(context).size.width / 1.6,
                                            decoration: BoxDecoration(
                                              color: Colors.grey.withOpacity(.3),
                                              borderRadius: BorderRadius.all(Radius.circular(10)),
                                              /*image: DecorationImage(
                                        image: AssetImage('assets/images/code.jpg'),
                                        fit: BoxFit.cover,
                                        colorFilter: ColorFilter.mode(
                                            Colors.black45, BlendMode.darken))*/),
                                            child: Image.asset('assets/images/guitare.jpg', fit: BoxFit.cover, colorBlendMode: BlendMode.darken,)
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(left: 45, top: 135, right: 45),
                                          height: 40,
                                          width: 150,
                                          color: themeColor.withOpacity(0.8),
                                          child: Center(
                                            child: Text(
                                              'Musique',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 17),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    Stack(
                                      children: <Widget>[
                                        Container(
                                            margin: EdgeInsets.all(5),
                                            height: 150,
                                            width: MediaQuery.of(context).size.width / 1.6,
                                            decoration: BoxDecoration(
                                              color: Colors.grey.withOpacity(.3),
                                              borderRadius: BorderRadius.all(Radius.circular(10)),
                                              /*image: DecorationImage(
                                        image: AssetImage('assets/images/code.jpg'),
                                        fit: BoxFit.cover,
                                        colorFilter: ColorFilter.mode(
                                            Colors.black45, BlendMode.darken))*/),
                                            child: Image.asset('assets/images/school.jpg', fit: BoxFit.cover, colorBlendMode: BlendMode.darken,)
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(left: 45, top: 135, right: 45),
                                          height: 40,
                                          width: 150,
                                          color: themeColor.withOpacity(0.8),
                                          child: Center(
                                            child: Text(
                                              'Scolaire',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 17),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    Stack(
                                      children: <Widget>[
                                        Container(
                                            margin: EdgeInsets.all(5),
                                            height: 150,
                                            width: MediaQuery.of(context).size.width / 1.6,
                                            decoration: BoxDecoration(
                                              color: Colors.grey.withOpacity(.3),
                                              borderRadius: BorderRadius.all(Radius.circular(10)),
                                              /*image: DecorationImage(
                                        image: AssetImage('assets/images/code.jpg'),
                                        fit: BoxFit.cover,
                                        colorFilter: ColorFilter.mode(
                                            Colors.black45, BlendMode.darken))*/),
                                            child: Image.asset('assets/images/sport.jpg', fit: BoxFit.cover, colorBlendMode: BlendMode.darken,)
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(left: 45, top: 135, right: 45),
                                          height: 40,
                                          width: 150,
                                          color: themeColor.withOpacity(0.8),
                                          child: Center(
                                            child: Text(
                                              'Sport',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 17),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                )
                            ),
                          ),
                          SizedBox(height: 20,),
                          Container(
                            padding: EdgeInsets.only(top: 15, left: 20, right: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Le Magazine Myprof",
                                  style: TextStyle(
                                    color: accanceColor,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 22,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                ...List.generate(
                                    5,
                                        (index) => ListTile(
                                      title: Text('Confinement education $index'),
                                      subtitle: Text('1200 article  selectionner $index'),
                                      leading: Container(
                                        margin: EdgeInsets.all(5),
                                        height: 110,
                                        width: 70,
                                        decoration: BoxDecoration(
                                            color: Colors.grey.withOpacity(.3),
                                            image: DecorationImage(
                                                image:
                                                AssetImage('assets/images/architecture.jpg'),
                                                fit: BoxFit.cover)),
                                      ),
                                    ))
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        )
      ),
    );
  }
}


/*ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Stack(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.all(5),
                              height: 110,
                              width: MediaQuery.of(context).size.width / 1.8,
                              decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(.3),
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                  /*image: DecorationImage(
                                      image: AssetImage('assets/images/code.jpg'),
                                      fit: BoxFit.cover,
                                      colorFilter: ColorFilter.mode(
                                          Colors.black45, BlendMode.darken))*/),
                              child: Image.asset('assets/images/code.jpg', fit: BoxFit.cover, colorBlendMode: BlendMode.darken,)
                            ),
                            Positioned(
                              top: 100,
                              left: 35,
                              //bottom: 0,
                              child: Container(
                                height: 35,
                                width: 150,
                                color: themeColor.withOpacity(0.9),
                              )
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.all(5),
                          height: 110,
                          width: MediaQuery.of(context).size.width / 1.8,
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(.3),
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              image: DecorationImage(
                                  image: AssetImage('assets/images/english.jpg'),
                                  fit: BoxFit.cover,
                                  colorFilter: ColorFilter.mode(
                                      Colors.black45, BlendMode.darken))),
                          child: Center(
                            child: Text(
                              'Anglais',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(5),
                          height: 110,
                          width: MediaQuery.of(context).size.width / 1.8,
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(.3),
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              image: DecorationImage(
                                  image: AssetImage('assets/images/guitare.jpg'),
                                  fit: BoxFit.cover,
                                  colorFilter: ColorFilter.mode(
                                      Colors.black45, BlendMode.darken))),
                          child: Center(
                            child: Text(
                              'Musique',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(5),
                          height: 110,
                          width: MediaQuery.of(context).size.width / 1.8,
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(.3),
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              image: DecorationImage(
                                  image: AssetImage('assets/images/school.jpg'),
                                  fit: BoxFit.cover,
                                  colorFilter: ColorFilter.mode(
                                      Colors.black45, BlendMode.darken))),
                          child: Center(
                            child: Text(
                              'Scolaire',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(5),
                          height: 110,
                          width: MediaQuery.of(context).size.width / 1.8,
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(.3),
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              image: DecorationImage(
                                  image: AssetImage('assets/images/sport.jpg'),
                                  fit: BoxFit.cover,
                                  colorFilter: ColorFilter.mode(
                                      Colors.black45, BlendMode.darken))),
                          child: Center(
                            child: Text(
                              'Sports',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17),
                            ),
                          ),
                        )
                      ],
                    )*/