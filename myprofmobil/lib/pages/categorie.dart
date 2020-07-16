import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
          child: Stack(
            children: <Widget>[
              Container(
                height: deviceHeight/1.8,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(100),
                      bottomRight: Radius.circular(100),
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
                      SizedBox(height: 30,),
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
                      SizedBox(height: 50,),
                      Card(
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child:  Container(
                          margin: EdgeInsets.only(left: 20),
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
                    ],
                  ),
                ),
              ),
              SizedBox(height: 40,),
              Container(
                margin: EdgeInsets.only(top: 300, left: 10),
                child: InkWell(
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
                          height: 170,
                          width: MediaQuery.of(context).size.width /2.5,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              /*image: DecorationImage(
                                  image: AssetImage('assets/images/code.jpg'),
                                  fit: BoxFit.cover,
                                  colorFilter: ColorFilter.mode(
                                      Colors.black38, BlendMode.darken))*/
                          ),
                          child: Column(
                            children: <Widget>[
                              SizedBox(height: 30,),
                              Container(
                                height: 60,
                                  width: 100,
                                  child: SvgPicture.asset('assets/images/papou.svg')),
                              SizedBox(height: 20,),
                              Text('Informatique', style: TextStyle(
                                fontWeight: FontWeight.bold, fontFamily: 'BAARS', fontSize: 20
                              ),)
                              /*Container(
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
                              ),*/
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child:    Container(
                          margin: EdgeInsets.all(5),
                          height: 170,
                          width: MediaQuery.of(context).size.width /2.5,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            /*image: DecorationImage(
                                  image: AssetImage('assets/images/code.jpg'),
                                  fit: BoxFit.cover,
                                  colorFilter: ColorFilter.mode(
                                      Colors.black38, BlendMode.darken))*/
                          ),
                          child: Column(
                            children: <Widget>[
                              SizedBox(height: 30,),
                              Container(
                                  height: 60,
                                  width: 100,
                                  child: SvgPicture.asset('assets/images/papou.svg')),
                              SizedBox(height: 20,),
                              Text('Anglais', style: TextStyle(
                                  fontWeight: FontWeight.bold, fontFamily: 'BAARS', fontSize: 20
                              ),)
                              /*Container(
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
                              ),*/
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child:    Container(
                          margin: EdgeInsets.all(5),
                          height: 170,
                          width: MediaQuery.of(context).size.width /2.5,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            /*image: DecorationImage(
                                  image: AssetImage('assets/images/code.jpg'),
                                  fit: BoxFit.cover,
                                  colorFilter: ColorFilter.mode(
                                      Colors.black38, BlendMode.darken))*/
                          ),
                          child: Column(
                            children: <Widget>[
                              SizedBox(height: 30,),
                              Container(
                                  height: 60,
                                  width: 100,
                                  child: SvgPicture.asset('assets/images/papou.svg')),
                              SizedBox(height: 20,),
                              Text('Musique', style: TextStyle(
                                  fontWeight: FontWeight.bold, fontFamily: 'BAARS', fontSize: 20
                              ),)
                              /*Container(
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
                              ),*/
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child:    Container(
                          margin: EdgeInsets.all(5),
                          height: 170,
                          width: MediaQuery.of(context).size.width /2.5,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            /*image: DecorationImage(
                                  image: AssetImage('assets/images/code.jpg'),
                                  fit: BoxFit.cover,
                                  colorFilter: ColorFilter.mode(
                                      Colors.black38, BlendMode.darken))*/
                          ),
                          child: Column(
                            children: <Widget>[
                              SizedBox(height: 30,),
                              Container(
                                  height: 60,
                                  width: 100,
                                  child: SvgPicture.asset('assets/images/papou.svg')),
                              SizedBox(height: 20,),
                              Text('Scolaire', style: TextStyle(
                                  fontWeight: FontWeight.bold, fontFamily: 'BAARS', fontSize: 20
                              ),)
                              /*Container(
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
                              ),*/
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child:    Container(
                          margin: EdgeInsets.all(5),
                          height: 170,
                          width: MediaQuery.of(context).size.width /2.5,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            /*image: DecorationImage(
                                  image: AssetImage('assets/images/code.jpg'),
                                  fit: BoxFit.cover,
                                  colorFilter: ColorFilter.mode(
                                      Colors.black38, BlendMode.darken))*/
                          ),
                          child: Column(
                            children: <Widget>[
                              SizedBox(height: 30,),
                              Container(
                                  height: 60,
                                  width: 100,
                                  child: SvgPicture.asset('assets/images/papou.svg')),
                              SizedBox(height: 20,),
                              Text('Sport', style: TextStyle(
                                  fontWeight: FontWeight.bold, fontFamily: 'BAARS', fontSize: 20
                              ),)
                              /*Container(
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
                              ),*/
                            ],
                          ),
                        ),
                      ),

            ]
                  ),
                ),
              ),
              SizedBox(height: 40,),
              SizedBox(height: 20,),
            ],
          ),
        ),
      ),
    );
  }
}
