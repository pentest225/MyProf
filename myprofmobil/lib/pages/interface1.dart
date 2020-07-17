import 'package:flutter/material.dart';
import 'package:myprofmobil/outils/myStyle.dart';
import 'package:myprofmobil/screnn/contactPage.dart';
import 'package:myprofmobil/widgets/myDrower.dart';

class InterfaceOne extends StatefulWidget {
  @override
  _InterfaceOneState createState() => _InterfaceOneState();
}

class _InterfaceOneState extends State<InterfaceOne> {
  @override
  Widget build(BuildContext context) {

    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;


    return Scaffold(
      drawer: MyDrower(),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: fondcolor,
        child: SingleChildScrollView(
          child: Stack(
            children: <Widget>[
              Container(
                height: deviceHeight/2.8,
                width: deviceWidth,
                decoration: BoxDecoration(
                  color: themeColor,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(70),
                    bottomLeft: Radius.circular(70),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: 35,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.3),
                                shape: BoxShape.circle
                              ),
                              child: Center(
                                  child: Icon(Icons.arrow_back_ios, color: Colors.white,),
                              ),
                            ),
                          ),
                          /*
                          ` b bInkWell(
                            onTap: () {
                             print('esthy');
                            },
                            child: Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.3),
                                  shape: BoxShape.circle
                              ),
                              child: Center(
                                  child:  Icon(Icons.settings, color: Colors.white,),
                              ),
                            ),
                          )*/
                        ],
                      ),
                      SizedBox(height: 25,),
                      Text('MyProfs', style: TextStyle(
                        color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold, fontFamily: 'BAARS'
                      ),)
                    ],
                  ),
                ),
              ),
              Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 20, right: 20, top: 200),
                    height: deviceHeight,
                    width: 320,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: 60,),
                        Text('Henry Clark', style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold, fontSize: 22
                        ),),
                        SizedBox(height: 5,),
                        Text('Dévéloppeur', style: TextStyle(
                          color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 16
                        ),),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(Icons.star, color: Colors.orangeAccent,),
                            SizedBox(width: 5,),
                            Icon(Icons.star, color: Colors.orangeAccent,),
                            SizedBox(width: 5,),
                            Icon(Icons.star, color: Colors.orangeAccent,),
                            SizedBox(width: 5,),
                            Icon(Icons.star_half, color: Colors.orangeAccent,),
                            SizedBox(width: 5,),
                            Icon(Icons.star_border, color: Colors.orangeAccent,)
                          ],
                        ),
                        SizedBox(height: 10,),
                        Container(
                          margin: EdgeInsets.only(left: 20),
                          child: Text('Qualité du profil, excellence du diplôme, réponse garantie. Henry organisera avec soin le premier cours.', style: TextStyle(
                              color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 16
                          ),),
                        ),
                        SizedBox(height: 20,),
                        Container(
                          padding: EdgeInsets.only( left: 20, right: 20),
                          height: MediaQuery.of(context).size.height/7,
                          color: Colors.white.withOpacity(0.1),
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[
                              Card(
                                color: accanceColor,
                                child: Container(
                                  margin: EdgeInsets.all(3),
                                  height: 50,
                                  width: MediaQuery.of(context).size.width/2.9,
                                  decoration: BoxDecoration(
                                      color: accanceColor,
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Icon(Icons.check_circle, size: 28, color: Colors.white,),
                                      SizedBox(height: 10,),
                                      Text('Diplome verifié', style: TextStyle(
                                          color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16
                                      ),)
                                    ],
                                  ),
                                ),
                              ),
                              Card(
                                color: accanceColor,
                                child: Container(
                                  margin: EdgeInsets.all(3),
                                  height: MediaQuery.of(context).size.height/8,
                                  width: MediaQuery.of(context).size.width/2.9,
                                  decoration: BoxDecoration(
                                      color: accanceColor,
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text('3h', style: TextStyle(
                                              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22
                                          ),),
                                          Icon(Icons.flash_on, color: Colors.white, size: 22,)
                                        ],
                                      ),
                                      SizedBox(height: 10,),
                                      Text("Temps de réponse", style: TextStyle(
                                          color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14
                                      ),)
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20,),
                        Container(
                          margin: EdgeInsets.only(right: 70),
                          child: Text('Cours proposés par henry', style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18
                          ),),
                        ),
                        SizedBox(height: 5,),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                height: 120,
                                width: 140,
                                decoration: BoxDecoration(
                                    color: Colors.grey.withOpacity(0.4),
                                    borderRadius: BorderRadius.circular(15)
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                          color: Colors.white70,
                                          shape: BoxShape.circle
                                      ),
                                      child:  Icon(Icons.account_circle, size: 30, color: themeColor,),
                                    ),
                                    SizedBox(height: 10,),
                                    Text('Individuel', style: TextStyle(
                                        fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black, fontFamily: 'BAARS'
                                    ),)
                                  ],
                                ),
                              ),
                              Container(
                                height: 120,
                                width: 140,
                                decoration: BoxDecoration(
                                    color: Colors.grey.withOpacity(0.4),
                                    borderRadius: BorderRadius.circular(15)
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                          color: Colors.white70,
                                          shape: BoxShape.circle
                                      ),
                                      child:  Icon(Icons.supervised_user_circle, size: 30, color: themeColor,),
                                    ),
                                    SizedBox(height: 10,),
                                    Text('En groupe', style: TextStyle(
                                        fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black, fontFamily: 'BAARS'
                                    ),)
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          margin: EdgeInsets.only(right: 40),
                          child: Text('Ces cours peuvent se dérouler', style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18
                          ),),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          height: 120,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.all(5),
                                height: 150,
                                width: 90,
                                decoration: BoxDecoration(
                                    color: Colors.grey.withOpacity(0.4),
                                    borderRadius: BorderRadius.circular(15)
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                          color: Colors.white70,
                                          shape: BoxShape.circle
                                      ),
                                      child:  Icon(Icons.location_on, size: 25, color: themeColor,),
                                    ),
                                    SizedBox(height: 10,),
                                    Text('Chez elle', style: TextStyle(
                                        fontWeight: FontWeight.bold, fontSize: 16, color: Colors.black, fontFamily: 'BAARS'
                                    ),)
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.all(5),
                                height: 120,
                                width: 90,
                                decoration: BoxDecoration(
                                    color: Colors.grey.withOpacity(0.4),
                                    borderRadius: BorderRadius.circular(15)
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                          color: Colors.white70,
                                          shape: BoxShape.circle
                                      ),
                                      child:  Icon(Icons.home, size: 25, color: themeColor,),
                                    ),
                                    SizedBox(height: 10,),
                                    Text('Chez vous', style: TextStyle(
                                        fontWeight: FontWeight.bold, fontSize: 16, color: Colors.black, fontFamily: 'BAARS'
                                    ),)
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.all(5),
                                height: 120,
                                width: 90,
                                decoration: BoxDecoration(
                                    color: Colors.grey.withOpacity(0.4),
                                    borderRadius: BorderRadius.circular(15)
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                          color: Colors.white70,
                                          shape: BoxShape.circle
                                      ),
                                      child:  Icon(Icons.videocam, size: 25, color: themeColor,),
                                    ),
                                    SizedBox(height: 10,),
                                    Text('Webcam', style: TextStyle(
                                        fontWeight: FontWeight.bold, fontSize: 16, color: Colors.black, fontFamily: 'BAARS'
                                    ),)
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 30,),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ContactPage()));
                    },
                    child: Container(
                      height: 40,
                      width: 200,
                      decoration: BoxDecoration(
                          color: themeColor,
                        border: Border.all(color: themeColor, width: 1),
                        borderRadius: BorderRadius.circular(50),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black87,
                                offset: Offset(0.0, 1.5),
                                blurRadius: 1.5
                            )
                          ]
                          /*gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [themeColor, Colors.orangeAccent]
                          )*/
                      ),
                      child: Center(
                          child: Text('Réservez', style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white
                          ),)
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                ],
              ),
              Container(
                margin: EdgeInsets.only(left: 130, right: 130, top: 150),
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    color: accanceColor,
                  borderRadius: BorderRadius.circular(100),
                  image: DecorationImage(
                    image: AssetImage('assets/images/man.jpg'),
                    fit: BoxFit.cover
                  )
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
