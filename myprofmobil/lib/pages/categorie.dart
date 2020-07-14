import 'package:flutter/material.dart';
import 'package:myprofmobil/outils/myStyle.dart';

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
                      InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(Icons.arrow_back, color: Colors.white,)),
                      SizedBox(height: 50,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('Catégorie', style: TextStyle(
                              fontFamily: 'BAARS', fontWeight: FontWeight.bold, fontSize: 40, color: Colors.white
                          ),),
                          SizedBox(width: 5,),
                          Icon(Icons.school, size: 40, color: themeColor,)
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 50,),
              Wrap(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        margin: EdgeInsets.all(5),
                        height: 140,
                        width: 150,
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(.3),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            image: DecorationImage(
                                image: AssetImage('assets/images/html.jpg'),
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(
                                    Colors.black26, BlendMode.darken))),
                        child: Column(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(left: 10, top: 50, right: 10),
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
                        )
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        margin: EdgeInsets.all(5),
                        height: 140,
                        width: 150,
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(.3),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            image: DecorationImage(
                                image: AssetImage('assets/images/english.jpg'),
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(
                                    Colors.black26, BlendMode.darken))),
                        child: Column(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(left: 10, top: 50, right: 10),
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
                        )
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        margin: EdgeInsets.all(5),
                        height: 140,
                        width: 150,
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(.3),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            image: DecorationImage(
                                image: AssetImage('assets/images/guitare.jpg'),
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(
                                    Colors.black26, BlendMode.darken))),
                        child: Column(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(left: 10, top: 50, right: 10),
                              height: 30,
                              width: 100,
                              color: themeColor.withOpacity(0.8),
                              child: Center(
                                child: Text(
                                  'Musique',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14),
                                ),
                              ),
                            ),
                          ],
                        )
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        margin: EdgeInsets.all(5),
                        height: 140,
                        width: 150,
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(.3),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            image: DecorationImage(
                                image: AssetImage('assets/images/school.jpg'),
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(
                                    Colors.black26, BlendMode.darken))),
                        child: Column(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(left: 10, top: 50, right: 10),
                              height: 30,
                              width: 100,
                              color: themeColor.withOpacity(0.8),
                              child: Center(
                                child: Text(
                                  'Scolaire',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14),
                                ),
                              ),
                            ),
                          ],
                        )
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        margin: EdgeInsets.all(5),
                        height: 140,
                        width: 150,
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(.3),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            image: DecorationImage(
                                image: AssetImage('assets/images/sport.jpg'),
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(
                                    Colors.black26, BlendMode.darken))),
                        child: Column(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(left: 10, top: 50, right: 10),
                              height: 30,
                              width: 100,
                              color: themeColor.withOpacity(0.8),
                              child: Center(
                                child: Text(
                                  'Sport',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14),
                                ),
                              ),
                            ),
                          ],
                        )
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        margin: EdgeInsets.all(5),
                        height: 140,
                        width: 150,
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(.3),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            image: DecorationImage(
                                image: AssetImage('assets/images/html.jpg'),
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(
                                    Colors.black26, BlendMode.darken))),
                        child: Column(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(left: 10, top: 50, right: 10),
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
                        )
                    ),
                  ),

                ],
              ),
              SizedBox(height: 40,),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen2()));
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
                      "Terminer",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16
                      ),
                    ),
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
