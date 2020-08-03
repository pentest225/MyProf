import 'package:flutter/material.dart';
import 'package:myprofmobil/outils/myStyle.dart';
import 'package:myprofmobil/widgets/Specialite.dart';

import 'profProfil.dart';
import 'suivant.dart';

//PAGE POUR COMMENCE LA PUBLICATIONS D'UNE ANNONCE 
class DemandePage extends StatefulWidget {
  static const routeName = "anonces";
  @override
  _DemandePageState createState() => _DemandePageState();
}

class _DemandePageState extends State<DemandePage> {

  List<String> filiere = [
    'Informatique',
    'Scolaire',
    'Musique',
    'Langues',
    'Santé',
    'Sport',
    'Loisirs',
    'Professionalisme',
  ];

  List<Icon> icons = [
    Icon(Icons.desktop_mac),
  ];

  @override
  Widget build(BuildContext context) {
    var item;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: themeColor,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white,),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('MyProfs', style: TextStyle(
          fontFamily: 'BAARS', fontSize: 22
        ),),
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: fondcolor,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(height: 25,),
              Card(
                color: Colors.white,
                child: Container(
                  padding: EdgeInsets.only(left: 10),
                  height: MediaQuery.of(context).size.height/15,
                  width: MediaQuery.of(context).size.width/1.1,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: TextField(
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      icon: Icon(Icons.search, color: Colors.grey,),
                      hintText: 'Rechercher',
                      hintStyle: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.bold
                      )
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text('Quel est votre Département?', style: TextStyle(
                      color: Colors.black87, fontSize: 25, fontFamily: 'BAARS', fontWeight: FontWeight.w700
                  ),),
                ),
              ),
              SizedBox(height: 20,),
              Wrap(
                children: <Widget>[
                  Specialite("Scolaire",Icons.school),
                  Specialite("Informatique",Icons.laptop_mac),
                  Specialite("Musique",Icons.library_music),
                  Specialite("Sport",Icons.directions_bike),
                  Specialite("Arts & loisirs",Icons.bubble_chart),
                  Specialite("Langues",Icons.local_library),
                   ],
              ),
              SizedBox(height: 30,),
            ],
          ),
        ),
      ),
    );
  }
}
