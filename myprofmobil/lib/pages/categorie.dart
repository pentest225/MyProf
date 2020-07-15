import 'package:flutter/material.dart';
import 'package:myprofmobil/outils/myStyle.dart';
import 'package:myprofmobil/screnn/all_prof.dart';
import 'package:myprofmobil/screnn/homeScreen2.dart';

class CategoriePage extends StatefulWidget {

  static const routeName = '/categorie';

  @override
  _CategoriePageState createState() => _CategoriePageState();
}

class _CategoriePageState extends State<CategoriePage> {
  @override
  Widget build(BuildContext context) {

    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        height: deviceHeight,
        width: deviceWidth,
        color: fondcolor,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                height: deviceHeight/3,
                decoration: BoxDecoration(
                  //color: themeColor,
                  /*image: DecorationImage(
                          image: AssetImage('assets/images/ecole.jpg'),
                          fit: BoxFit.cover,
                          colorFilter: ColorFilter.mode(Colors.black54, BlendMode.darken)
                      ),*/
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(100)
                    ),
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [themeColor, Colors.orangeAccent]
                    )
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: 40,),
                      Row(
                        children: <Widget>[
                          InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Icon(Icons.arrow_back, color: Colors.white,)),
                        ],
                      ),
                      SizedBox(height: 50,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('Catégorie', style: TextStyle(
                              fontFamily: 'BAARS', fontWeight: FontWeight.bold, fontSize: 40, color: Colors.white
                          ),),
                          SizedBox(width: 5,),
                          Icon(Icons.school, size: 40, color: accanceColor,)
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 40,),
              Card(
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child:  Container(
                  padding: EdgeInsets.only(left: 15),
                  height: 50,
                  width: 320,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Recherche',
                        icon: Icon(Icons.search, size: 18, color: themeColor,)
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30,),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => AllProf()));
                },
                child: Wrap(
                  //spacing: 20,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child:    Container(
                        margin: EdgeInsets.all(5),
                        height: 150,
                        width: MediaQuery.of(context).size.width /2.5,
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(.3),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            image: DecorationImage(
                                image: AssetImage('assets/images/code.jpg'),
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(
                                    Colors.black38, BlendMode.darken))),
                        child: Column(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(left: 15, top: 60, right: 15),
                              height: 30,
                              width: 100,
                              color: themeColor.withOpacity(0.8),
                              child: Center(
                                child: Text(
                                  'Informatique',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child:  Container(
                        margin: EdgeInsets.all(5),
                        height: 150,
                        width:  MediaQuery.of(context).size.width /2.5,
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(.3),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            image: DecorationImage(
                                image: AssetImage('assets/images/english.jpg'),
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(
                                    Colors.black38, BlendMode.darken))),
                        child: Column(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(left: 15, top: 60, right: 15),
                              height: 30,
                              width: 100,
                              color: themeColor.withOpacity(0.8),
                              child: Center(
                                child: Text(
                                  'Anglais',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child:  Container(
                        margin: EdgeInsets.all(5),
                        height: 150,
                        width: MediaQuery.of(context).size.width /2.5,
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(.3),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            image: DecorationImage(
                                image: AssetImage('assets/images/guitare.jpg'),
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(
                                    Colors.black38, BlendMode.darken))),
                        child: Column(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(left: 15, top: 60, right: 15),
                              height: 30,
                              width: 100,
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
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child:     Container(
                        margin: EdgeInsets.all(5),
                        height: 150,
                        width: MediaQuery.of(context).size.width /2.5,
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(.3),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            image: DecorationImage(
                                image: AssetImage('assets/images/school.jpg'),
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(
                                    Colors.black38, BlendMode.darken))),
                        child: Column(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(left: 15, top: 60, right: 15),
                              height: 30,
                              width: 100,
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
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child:   Container(
                        margin: EdgeInsets.all(5),
                        height: 150,
                        width: MediaQuery.of(context).size.width /2.5,
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(.3),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            image: DecorationImage(
                                image: AssetImage('assets/images/sport.jpg'),
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(
                                    Colors.black38, BlendMode.darken))),
                        child:  Column(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(left: 15, top: 60, right: 15),
                              height: 30,
                              width: 100,
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
                            ),
                          ],
                        ),
                      ),
                    ),

            ]
                ),
              ),
              SizedBox(height: 40,),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen2()));
                },
                child: Container(
                  margin: EdgeInsets.only(left: 60, right: 60),
                  height: 40,
                  width: 300,
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
                      "Plus de catégories",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
            ],
          ),
        ),
      ),
    );
  }
}
