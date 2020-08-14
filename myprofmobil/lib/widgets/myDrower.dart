import 'package:flutter/material.dart';
import 'package:myprofmobil/outils/myStyle.dart';
import 'package:myprofmobil/providers/auth/authenticate.dart';
import 'package:myprofmobil/providers/auth/models/user.dart';
import 'package:myprofmobil/screnn/authentification/login/login.dart';
import 'package:myprofmobil/screnn/firstPage.dart';
import 'package:myprofmobil/screnn/home_screen.dart';
import 'package:myprofmobil/screnn/message.dart';
import 'package:myprofmobil/screnn/profil/profil.dart';
import 'package:myprofmobil/providers/annonces/annonces.dart';
import 'package:myprofmobil/screnn/dash_user.dart';
import 'package:myprofmobil/screnn/demandeList.dart';
import 'package:myprofmobil/screnn/feature_annonce/components/section_separator.dart';
import 'package:myprofmobil/screnn/feature_annonce/components/section_title.dart';
import 'package:myprofmobil/screnn/feature_annonce/main_annonce.dart';
import 'package:myprofmobil/screnn/feature_annonce/styles.dart';
import 'package:provider/provider.dart';

import 'drowerWidgets/route.dart';

class MyDrower extends StatefulWidget {
  const MyDrower({Key key}) : super(key: key);

  @override
  _MyDrowerState createState() => _MyDrowerState();
}

class _MyDrowerState extends State<MyDrower> {
  
  Future<void> logout() async {
    await Provider.of<Authenticated>(context, listen: false).logOut();
  }

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;

    final annonce = Provider.of<Annonces>(context).items;
    final User _userInfo = Provider.of<Authenticated>(context,listen:false).user;
    print("Drower ${_userInfo.toMap()}");
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
              color: Colors.white,
              child: ListView(
                children: <Widget>[
                  Container(
                      child: Column(
                    children: [
                      FormSectionTitle("annonce"),
                      Chip(
                        label: Text(
                          '+',
                          style: TextStyle(
                              color: Styles.secondaryColor, fontSize: 40),
                        ),
                      ),
                    ],
                  )),
                   InkWell(
                            onTap: () => null,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Card(
                                child: Container(
                                  height: deviceWidth / 3.7,
                                  width: deviceWidth / 2.5,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Icon(
                                        Icons.school,
                                        color: accanceColor,
                                        size: 80,
                                      ),
                                      Text("Annoce")
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          )
                  // ...annonce
                  //     .map((annoceOfUser) =>)
                  //     .take(3)
                  //     .toList(),
                ],
              ),
            ),
            Container(
              height: deviceHeight,
              width: 2,
              color: Colors.black45.withOpacity(0.1),
            ),
            //Deuxiem partie du drower
            Expanded(
              child: Container(
                color: fondcolor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 35,
                    ),
                    Column(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          height: deviceHeight / 8,
                          width: deviceWidth / 4,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage(logo),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(height: 7),
                        Container(
                          child: Text(
                            '${_userInfo.nom}',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'BAARS'),
                          ),
                        ),
                        SizedBox(height: 5),
                        Container(
                            child: Text(
                         " ${_userInfo.prenoms} ${_userInfo.nom}" ,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black54),
                        )),
                        Separator(),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          MyRoute(
                            text: "Messages",
                            icon: Icons.mail,
                            route: MessagePage.routeName,
                          ),
                          // Spacer(),
                          SizedBox(
                            height: 15,
                          ),
                          MyRoute(
                            text: "Annonce",
                            icon: Icons.add,
                            route: MainAnnonce.routeName,
                          ),
                          // Spacer(),
                          SizedBox(
                            height: 15,
                          ),
                          MyRoute(
                            text: "Profil",
                            icon: Icons.person,
                            route: ProfilPage.routeName,
                          ),
                        ],
                      ),
                    ),
                    Separator(),
                    Container(
                      padding: EdgeInsets.only(left: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          MyRoute(
                            text: "Tableau de bord",
                            icon: Icons.dashboard,
                            route: UserDash.routeName,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          MyRoute(
                            text: "Demande de cours",
                            icon: Icons.bookmark,
                            route: DemandeListe.routeName,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                            child: Row(
                              children: <Widget>[
                                Icon(
                                  Icons.save_alt,
                                  color: themeColor,
                                  size: 22,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                InkWell(
                                  onTap: logout,
                                  child: Text("Deconnexion",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black87,
                                          fontFamily: 'Barlow')),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Spacer()
                  ],
                ),
              ),
            )
          ],
        )),
      ),
    );
  }
}
