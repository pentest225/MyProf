import 'package:flutter/material.dart';
import 'package:myprofmobil/outils/myStyle.dart';

import 'profProfil.dart';
import 'suivant.dart';

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
                  /*for (item in filiere) Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Suivant()));
                        },
                        child: Container(
                          height: 140,
                          width: 140,
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.1),
                              border: Border.all(color: Color.fromRGBO(17, 122, 139, 1), width: 1),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Column(
                            children: <Widget>[
                              SizedBox(height: 25,),
                              Icon(Icons.school, size: 60, color: Color.fromRGBO(133, 136, 241, 1),),
                              SizedBox(height: 5,),
                              Center(
                                child: Text('$item', style: TextStyle(
                                    color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 15
                                ),),
                              )
                            ],
                          ),
                        ),
                      )
                  )*/
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Suivant()));
                        },
                        child: Container(
                          height: 140,
                          width: 140,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              //border: Border.all(color: Color.fromRGBO(17, 122, 139, 1), width: 1),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Column(
                            children: <Widget>[
                              SizedBox(height: 20,),
                              Container(
                                height: 70,
                                  width: 70,
                                  decoration: BoxDecoration(
                                      color: themeColor.withOpacity(0.4),
                                    shape: BoxShape.circle
                                  ),
                                  child: Icon(Icons.school, size: 35, color: themeColor,)),
                              SizedBox(height: 15,),
                              Center(
                                child: Text('Scolaire', style: TextStyle(
                                    color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 17
                                ),),
                              )
                            ],
                          ),
                        ),
                      )
                  ),
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Suivant()));
                        },
                        child: Container(
                          height: 140,
                          width: 140,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              //border: Border.all(color: Color.fromRGBO(17, 122, 139, 1), width: 1),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Column(
                            children: <Widget>[
                              SizedBox(height: 20,),
                              Container(
                                  height: 70,
                                  width: 70,
                                  decoration: BoxDecoration(
                                      color: themeColor.withOpacity(0.4),
                                      shape: BoxShape.circle
                                  ),
                                  child: Icon(Icons.desktop_mac, size: 35, color: themeColor,)),
                              SizedBox(height: 15,),
                              Center(
                                child: Text('Informatique', style: TextStyle(
                                    color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 17
                                ),),
                              )
                            ],
                          ),
                        ),
                      )
                  ),
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Suivant()));
                        },
                        child: Container(
                          height: 140,
                          width: 140,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              //border: Border.all(color: Color.fromRGBO(17, 122, 139, 1), width: 1),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Column(
                            children: <Widget>[
                              SizedBox(height: 20,),
                              Container(
                                  height: 70,
                                  width: 70,
                                  decoration: BoxDecoration(
                                      color: themeColor.withOpacity(0.4),
                                      shape: BoxShape.circle
                                  ),
                                  child: Icon(Icons.library_music, size: 35, color: themeColor,)),
                              SizedBox(height: 15,),
                              Center(
                                child: Text('Musique', style: TextStyle(
                                    color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 17
                                ),),
                              )
                            ],
                          ),
                        ),
                      )
                  ),
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Suivant()));
                        },
                        child: Container(
                          height: 140,
                          width: 140,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              //border: Border.all(color: accanceColor, width: 1),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Column(
                            children: <Widget>[
                              SizedBox(height: 20,),
                              Container(
                                  height: 70,
                                  width: 70,
                                  decoration: BoxDecoration(
                                      color: themeColor.withOpacity(0.4),
                                      shape: BoxShape.circle
                                  ),
                                  child: Icon(Icons.directions_bike, size: 35, color: themeColor,)),
                              SizedBox(height: 15,),
                              Center(
                                child: Text('Sport', style: TextStyle(
                                    color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 17
                                ),),
                              )
                            ],
                          ),
                        ),
                      )
                  ),
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Suivant()));
                        },
                        child: Container(
                          height: 140,
                          width: 140,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              //border: Border.all(color: Color.fromRGBO(17, 122, 139, 1), width: 1),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Column(
                            children: <Widget>[
                              SizedBox(height: 20,),
                              Container(
                                  height: 70,
                                  width: 70,
                                  decoration: BoxDecoration(
                                      color: themeColor.withOpacity(0.4),
                                      shape: BoxShape.circle
                                  ),
                                  child: Icon(Icons.bubble_chart, size: 35, color: themeColor,)),
                              SizedBox(height: 15,),
                              Center(
                                child: Text('Arts & loisirs', style: TextStyle(
                                    color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 17
                                ),),
                              )
                            ],
                          ),
                        ),
                      )
                  ),
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Suivant()));
                        },
                        child: Container(
                          height: 140,
                          width: 140,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              //border: Border.all(color: Color.fromRGBO(17, 122, 139, 1), width: 1),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Column(
                            children: <Widget>[
                              SizedBox(height: 20,),
                              Container(
                                  height: 70,
                                  width: 70,
                                  decoration: BoxDecoration(
                                      color: themeColor.withOpacity(0.4),
                                      shape: BoxShape.circle
                                  ),
                                  child: Icon(Icons.local_library, size: 35, color: themeColor,)),
                              SizedBox(height: 15,),
                              Center(
                                child: Text('Langues', style: TextStyle(
                                    color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 17
                                ),),
                              )
                            ],
                          ),
                        ),
                      )
                  )
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
