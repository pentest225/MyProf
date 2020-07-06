import 'package:flutter/material.dart';
import 'package:sprinkle/Overseer.dart';
import 'package:sprinkle/Provider.dart';
import 'screnn/contactPage.dart';
import 'screnn/home_screen.dart';
import 'screnn/home_screen.dart';
import 'screnn/profPage.dart';
import 'screnn/profProfil.dart';

import 'screnn/suivant.dart';

import 'package:myprofmobil/screnn/launcher_screen.dart';
import 'package:myprofmobil/manager/feature_toggle_anim.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return Provider(
      data: Overseer()
      .register<StateBloc>(()=> StateBloc())
      ,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'my Prof ',
        initialRoute: LaunchApp.routeName,
        routes: {
          LaunchApp.routeName : (context)=> LaunchApp(),
          HomeScreen.rooteName : (context)=> HomeScreen(),
          profProfil.routeName : (context)=> profProfil(),
          ContactPage.routeName : (context)=> ContactPage(),
          // profProfil.routeName: (ctx)=>MyHome()
        },
      ),

    );
  }
}
