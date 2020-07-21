import 'package:flutter/material.dart';
import 'package:myprofmobil/outils/myStyle.dart';

import 'profil.dart';

class ProfilInformations extends StatefulWidget {

  static const routeName = 'profilinformation';

  @override
  _ProfilInformationsState createState() => _ProfilInformationsState();
}

class _ProfilInformationsState extends State<ProfilInformations> {

  int _value = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Mon Compte', style: TextStyle(
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
          padding: const EdgeInsets.only(left: 10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Informations Générales', style: TextStyle(
                      fontFamily: 'BAARS', fontSize: 22, fontWeight: FontWeight.bold
                    ),),
                    Icon(Icons.book, color: themeColor,)
                  ],
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 60,
                    width: 320,
                    padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white,
                        //border: Border.all()
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                          value: _value,
                          items: [
                            DropdownMenuItem(
                              child: Text("Genre"),
                              value: 1,
                            ),
                            DropdownMenuItem(
                              child: Text("Femme"),
                              value: 2,
                            ),
                            DropdownMenuItem(
                                child: Text("Homme"),
                                value: 3
                            ),
                          ],
                          onChanged: (value) {
                            setState(() {
                              _value = value;
                            });
                          }
                    ),
                  ),
                  )
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Prenom :'),
                ),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 60,
                      width: 320,
                      padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white,
                        //border: Border.all()
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Patrick',
                          hintStyle: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black
                          ),
                          border: InputBorder.none
                        ),
                      )
                    )
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Nom :'),
                ),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height: 60,
                        width: 320,
                        padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          //border: Border.all()
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: 'Dagouaga',
                              hintStyle: TextStyle(
                                  fontWeight: FontWeight.bold, color: Colors.black
                              ),
                              border: InputBorder.none
                          ),
                        )
                    )
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Email :'),
                ),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height: 60,
                        width: 320,
                        padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          //border: Border.all()
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: 'patrick.dagouaga@gmail.com',
                              hintStyle: TextStyle(
                                  fontWeight: FontWeight.bold, color: accanceColor
                              ),
                              border: InputBorder.none
                          ),
                        )
                    )
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Numéro mobile :'),
                ),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height: 60,
                        width: 320,
                        padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          //border: Border.all()
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: 'Entrez votre numero',
                              hintStyle: TextStyle(
                                  fontWeight: FontWeight.bold, color: Colors.black54
                              ),
                              border: InputBorder.none
                          ),
                        )
                    )
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Numéro fixe:'),
                ),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height: 60,
                        width: 320,
                        padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          //border: Border.all()
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: 'Entrez votre numero',
                              hintStyle: TextStyle(
                                  fontWeight: FontWeight.bold, color: Colors.black54
                              ),
                              border: InputBorder.none
                          ),
                        )
                    )
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('ID skype:'),
                ),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height: 60,
                        width: 320,
                        padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          //border: Border.all()
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: 'ID Skype',
                              hintStyle: TextStyle(
                                  fontWeight: FontWeight.bold, color: Colors.black54
                              ),
                              border: InputBorder.none
                          ),
                        )
                    )
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('ID hangout:'),
                ),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height: 60,
                        width: 320,
                        padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          //border: Border.all()
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: 'ID Hangout',
                              hintStyle: TextStyle(
                                  fontWeight: FontWeight.bold, color: Colors.black54
                              ),
                              border: InputBorder.none
                          ),
                        )
                    )
                ),
                SizedBox(height: 30,),
                Center(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilPage()));
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height/14,
                      width: MediaQuery.of(context).size.width/1.5,
                      decoration: BoxDecoration(
                          color: themeColor,
                        borderRadius: BorderRadius.circular(50)
                      ),
                      child: Center(
                          child: Text('Valider', style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20, fontFamily: 'BAARS'
                          ),)
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
