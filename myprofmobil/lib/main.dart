import 'package:flutter/material.dart';
import 'package:myprofmobil/screnn/sync.dart';
import 'package:sprinkle/Overseer.dart';
import 'package:sprinkle/Provider.dart';
import 'pages/categorie.dart';
import 'screnn/contactPage.dart';
import 'screnn/dashboard.dart';
import 'screnn/home_screen.dart';
import 'screnn/home_screen.dart';
import 'screnn/profPage.dart';
import 'screnn/profProfil.dart';
import 'screnn/Inscription.dart';
import 'screnn/connexion.dart';

import 'screnn/regis.dart';
import 'screnn/register.dart';
import 'screnn/suivant.dart';
import 'screnn/searchPage.dart';
import 'screnn/demande.dart';
import 'package:myprofmobil/screnn/launcher_screen.dart';
import 'package:myprofmobil/manager/feature_toggle_anim.dart';

import 'screnn/verify.dart';

import 'screnn/all_prof.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return Provider(
      data: Overseer()
      .register<StateBloc>(()=> StateBloc()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'my Prof ',
        initialRoute: LaunchApp.routeName,
        routes: {
          LaunchApp.routeName : (context)=> LaunchApp(),
          HomeScreen.rooteName : (context)=> HomeScreen(),
          profProfil.routeName : (context)=> profProfil(),
          ContactPage.routeName : (context)=> ContactPage(),
          Dashboard.routeName : (context)=> Dashboard(),
          SearchPage.routeName :(context)=>SearchPage(),
          DemandePage.routeName:(context)=>DemandePage(),
          Inscription.routeName:(context)=>Inscription(),
          Connexion.routeNamed:(context)=>Connexion(),
          Dashboard.routeName:(context)=>Dashboard(),
          Syncr.routeName:(context)=>Syncr(),
          Verify.routeName:(context)=>Verify(),
          Regis.routeName:(context)=>Regis(),
          Registered.routeName:(context)=>Registered(),
          CategoriePage.routeName:(context)=>CategoriePage(),
          AllProf.routeName:(context)=>AllProf(),


          // profProfil.routeName: (ctx)=>MyHome()
        },
      ),

    );
  }
}
