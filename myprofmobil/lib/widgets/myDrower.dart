import 'package:flutter/material.dart';
import 'package:myprofmobil/outils/myStyle.dart';
import 'package:myprofmobil/pages/firstPage.dart';
import 'package:myprofmobil/pages/profil.dart';
import 'package:myprofmobil/providers/annonces/annonces.dart';
import 'package:myprofmobil/screnn/dash_user.dart';
import 'package:myprofmobil/screnn/demandeList.dart';
import 'package:myprofmobil/screnn/feature_annonce/components/section_separator.dart';
import 'package:myprofmobil/screnn/feature_annonce/components/section_title.dart';
import 'package:myprofmobil/screnn/feature_annonce/main_annonce.dart';
import 'package:myprofmobil/screnn/feature_annonce/styles.dart';
import 'package:provider/provider.dart';

class MyDrower extends StatelessWidget {
  const MyDrower({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;

    final annonce = Provider.of<Annonces>(context).items;

    return Container(
      width: deviceWidth / 1.1,
      child: Drawer(
        child: Container(
            child: Row(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.symmetric(vertical: 25),
                  alignment: Alignment.center,
                  height: deviceHeight,
                  width: deviceWidth / 3.3,
                  color: Styles.lightGrayColor,
                  child: ListView(
                    children: <Widget>[
                      ...annonce.map((annoceOfUser) => InkWell(
                        onTap: ()=> null,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Card(
                              child: Container(
                              height: deviceWidth / 3.7,
                              width: deviceWidth / 2.5,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Color(0x1a000000),
                                        blurRadius: 10,
                                        spreadRadius: 0,
                                        offset: Offset(0, 10)
                                    )
                                  ]
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(
                                    Icons.school,
                                    color: Colors.white,
                                    size: 80,
                                  ),
                                  Text(annoceOfUser.fields.titre.substring(0, 10))
                                ],
                              ),
                            ),
                          ),
                        ),
                      )).take(3).toList(),
                      Container(
                        child: Column(
                          children: [
                            FormSectionTitle("annonce"),
                            Chip(
                              label: Text('+', style: TextStyle(
                               color: Styles.secondaryColor, fontSize: 40
                                ),),
                            ),
                          ],
                        )
                      ),
                    ],),
                ),
                Container(
                  height: deviceHeight,
                  width: 2,
                   color: Colors.black45.withOpacity(0.1),
                ),
                Container(
                  color: fondcolor,
                  width: deviceWidth / 1.87,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                       SizedBox(height: 35,),
                      Column(
                        children: [
                        Container(
                        alignment: Alignment.center,
                        height: deviceHeight / 8,
                        width: deviceWidth / 4,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage('assets/images/man.jpg'),
                            fit: BoxFit.cover
                          )
                        ),
                      ),
                      SizedBox(height:7),
                      Container(
                        child: Text('MyProf', style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold, fontFamily: 'BAARS'),
                        ),
                      ),
                      SizedBox(height:5),
                      Container(
                        child: Text('youss.nan.ci', style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black54
                        ),)
                      ),
                      Separator(),
                      ],),
                      
                      Container(
                        padding: EdgeInsets.only(left: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Icon(Icons.navigation, color: themeColor, size: 22,) ,
                                SizedBox(width: 5,),
                                InkWell(
                                  onTap: ()=> null,
                                  child: Text('Navigateur', style: TextStyle(
                                    fontWeight: FontWeight.bold, color: Colors.black87, fontFamily: 'Barlow'
                                  ),),
                                )
                              ],
                            ),
                            SizedBox(height: 15,),
                            Row(
                              children: <Widget>[
                                Icon(Icons.person, color: themeColor, size: 22,),
                                SizedBox(width: 5,),
                                InkWell(
                                   onTap: (){
                                      Navigator.push(context,
                                        MaterialPageRoute(builder: (context) => MainAnnonce()));
                                  } ,
                                  child: Text('Annonce', style: TextStyle(
                                    fontWeight: FontWeight.bold, color: Colors.black87, fontFamily: 'Barlow'
                                  )),
                                )
                              ],
                            ),
                            SizedBox(height: 15,),
                            Row(
                              children: <Widget>[
                                Icon(Icons.person, color: themeColor, size: 22,),
                                SizedBox(width: 5,),
                                InkWell(
                                   onTap: (){
                                      Navigator.push(context,
                                        MaterialPageRoute(builder: (context) => ProfilPage()));
                                  } ,
                                  child: Text('Profil', style: TextStyle(
                                    fontWeight: FontWeight.bold, color: Colors.black87, fontFamily: 'Barlow'
                                  )),
                                )
                              ],
                            ),
                            Separator(),
                          ],
                        ),
                      ),

                      Container(
                        padding: EdgeInsets.only(left : 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Icon(Icons.dashboard, color: themeColor, size: 22,),
                                SizedBox(width: 5,),
                                InkWell(
                                   onTap: (){
                                     Navigator.of(context).pushNamed(UserDash.routeName);
                                  } ,
                                  child: Text('Tableau de bord', style: TextStyle(
                                    fontWeight: FontWeight.bold, color: Colors.black87, fontFamily: 'Barlow'
                                  )),
                                )
                              ],
                            ),
                            SizedBox(height: 15,),
                            Row(
                              children: <Widget>[
                                Icon(Icons.bookmark, color:themeColor, size: 22,),
                                SizedBox(width: 5,),
                                InkWell(
                                   onTap: (){
                                      Navigator.push(context,
                                        MaterialPageRoute(builder: (context) => DemandeListe()));
                                  } ,
                                  child: Text('Demande de cours', style: TextStyle(
                                    fontWeight: FontWeight.bold, color: Colors.black87, fontFamily: 'Barlow'
                                  )),
                                )
                              ],
                            ),
                              SizedBox(height: 15,),
                            Row(
                              children: <Widget>[
                                Icon(Icons.save_alt, color: themeColor, size: 22,),
                                SizedBox(width: 5,),
                                InkWell(
                                   onTap: (){
                                     Navigator.push(context,
                                     MaterialPageRoute(builder: (context) => FirstPage()));
                                  } ,
                                  child: Text('Deconnexion', style: TextStyle(
                                    fontWeight: FontWeight.bold, color: Colors.black87, fontFamily: 'Barlow'
                                  )),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      Spacer()
                    ],
                  ),
                )
              ],
            )
          ),
      ),
    );
  }
}
