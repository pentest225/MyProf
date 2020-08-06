import 'package:flutter/material.dart';
import 'package:myprofmobil/outils/myStyle.dart';

class ProfilSuppresion extends StatefulWidget {

  static const routeName = 'profilSuppression';

  @override
  _ProfilSuppresionState createState() => _ProfilSuppresionState();
}

class _ProfilSuppresionState extends State<ProfilSuppresion> {

  String radioItem = '';

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
        child: Column(
          children: <Widget>[
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Suppression du compte', style: TextStyle(
                    fontFamily: 'BAARS', fontSize: 22, fontWeight: FontWeight.bold
                ),),
                Icon(Icons.delete_sweep, color: themeColor,)
              ],
            ),
            SizedBox(height: 30,),
            Container(
              height: 100,
              width: 300,
              child: RichText(
                text: TextSpan(
                    style: TextStyle(
                        color: Colors.black87, fontSize: 20, fontFamily: 'Roboto'),
                    children: [
                      TextSpan(
                          text: "Attention!! ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontFamily: 'Roboto', color: Colors.black)),
                      TextSpan(text: "Toutes vos données (contacts, annonces, emails, ...) seront supprimés définitivement et de manière irréversible. "),
                    ]),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              padding: EdgeInsets.only(top: 10),
              height: 80,
              width: MediaQuery.of(context).size.width/1.1,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: RadioListTile(
                activeColor: accanceColor,
                title: Text(
                  "Supprimer mon compte ",
                  style: TextStyle(
                      color: Colors.black45,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                value: "Supprimer mon compte",
                groupValue: radioItem,
                onChanged: (val) {
                  setState(() {
                    radioItem = val;
                  });
                },
              ),
            ),
            SizedBox(height: 50,),
            Center(
              child: InkWell(
                onTap: () {
                  //Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilPage()));
                },
                child: Container(
                  height: MediaQuery.of(context).size.height/14,
                  width: MediaQuery.of(context).size.width/1.5,
                  decoration: BoxDecoration(
                      color: themeColor,
                      borderRadius: BorderRadius.circular(50)
                  ),
                  child: Center(
                      child: Text('Supprimer mon compte', style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18, fontFamily: 'BAARS'
                      ),)
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
