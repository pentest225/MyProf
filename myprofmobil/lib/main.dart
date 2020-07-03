import 'package:flutter/material.dart';
import 'screnn/contactPage.dart';
import 'screnn/demande.dart';
import 'screnn/myHome.dart';
import './screnn/profProfil.dart';
import 'screnn/profPage.dart';
import 'screnn/suivant.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'my Prof ',
      home:  DemandePage(),
      routes: {
        profProfil.routeName: (ctx)=>profProfil(),
        Suivant.routeName: (ctx)=>Suivant()
      },
    );
  }
}
