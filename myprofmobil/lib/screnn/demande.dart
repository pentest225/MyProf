import 'package:flutter/material.dart';

import 'profProfil.dart';
import 'suivant.dart';

class DemandePage extends StatefulWidget {
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
        backgroundColor: Color.fromRGBO(133, 136, 241, 1),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white,),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('MyProfs'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
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
                  for (item in filiere) Padding(
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
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
