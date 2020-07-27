import 'package:flutter/material.dart';
import 'package:myprofmobil/outils/myStyle.dart';

import 'forum.dart';

class ForumQuestion extends StatefulWidget {
  @override
  _ForumQuestionState createState() => _ForumQuestionState();
}

class _ForumQuestionState extends State<ForumQuestion> {

  List<String> categories = [
    'Scolaire',
    'Musique',
    'Sport',
    'Anglais',
    'Arts et Loisirs'
  ];

  String _chosenValue = 'categories';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Forum', style: TextStyle(
            fontSize: 25, fontWeight: FontWeight.bold, fontFamily: 'BAARS', color: Colors.black
        ),),
        centerTitle: true,
        elevation: 0,
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back, color: Colors.black,)
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: fondcolor,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 10,),
                Center(
                  child: Text('Poser votre question', style: TextStyle(
                    fontSize: 22, fontWeight: FontWeight.bold
                  ),),
                ),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.only(left: 10),
                  height: MediaQuery.of(context).size.height/14,
                  width: MediaQuery.of(context).size.width/1.1,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: accanceColor, width: 1)
                  ),
                  child:    DropdownButton<String>(
                    value: _chosenValue,
                    underline: Container(), // this is the magic
                    items: <String>['categories','Scolaire', 'Musique', 'Sport', 'Anglais', 'Arts et Loisirs']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value, style: TextStyle(
                          color: Colors.black54, fontSize: 18
                        ),),
                      );
                    }).toList(),
                    onChanged: (String value) {
                      setState(() {
                        _chosenValue = value;
                      });
                    },
                  ),
                ),

                SizedBox(height: 10,),
                Container(
                  padding: EdgeInsets.only(left: 10),
                  height: MediaQuery.of(context).size.height/14,
                  width: MediaQuery.of(context).size.width/1.1,
                  decoration: BoxDecoration(
                    color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: accanceColor, width: 1)
                  ),
                  child: TextField(
                    cursorColor: Colors.grey,
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    decoration: InputDecoration(
                      hintText: 'titre',
                      hintStyle: TextStyle(
                        fontSize: 18,
                      ),
                      border: InputBorder.none,

                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.only(left: 20),
                  margin: EdgeInsets.only(left: 10, right: 10),
                  height: MediaQuery.of(context).size.height/2,
                  width: MediaQuery.of(context).size.width/1,
                  decoration: BoxDecoration(
                      color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    //border: Border.all(color: accanceColor, width: 1),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black87,
                            offset: Offset(0.0, 1.5),
                            blurRadius: 1.5
                        )
                      ]
                  ),
                  child: TextField(
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    decoration: InputDecoration(
                      hintText: 'Entrer votre question',
                      hintStyle: TextStyle(
                        fontSize: 18,
                      ),
                      border: InputBorder.none,

                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Text('Télécharger un fichier', style: TextStyle(
                      fontSize: 17, color: Colors.black87, fontWeight: FontWeight.bold
                  ),),
                ),
                SizedBox(height: 10,),
                InkWell(
                  onTap: () {

                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 10),
                    height: MediaQuery.of(context).size.height/16,
                    width: MediaQuery.of(context).size.width/2.8,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: accanceColor, width: 1)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.file_upload, color: Colors.black54, size: 20,),
                        SizedBox(width: 3,),
                        Text('Fichier...', style: TextStyle(
                            color: Colors.black54, fontWeight: FontWeight.bold, fontFamily: 'BAARS', fontSize: 18
                        ),)
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 40,),
                Center(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ForumPage()));
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height/14,
                      width: MediaQuery.of(context).size.width/1.5,
                      decoration: BoxDecoration(
                          color: accanceColor,
                          borderRadius: BorderRadius.circular(50)
                      ),
                      child: Center(
                          child: Text('Envoyer', style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18, fontFamily: 'BAARS'
                          ),)
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
