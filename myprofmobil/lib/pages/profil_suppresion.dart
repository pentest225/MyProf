import 'package:flutter/material.dart';
import 'package:myprofmobil/outils/myStyle.dart';

class ProfilSuppresion extends StatefulWidget {

  static const routeName = 'profilSuppression';

  @override
  _ProfilSuppresionState createState() => _ProfilSuppresionState();
}

class _ProfilSuppresionState extends State<ProfilSuppresion> {

  String radioItem = '';
  bool isNotify = false;
  bool isNotify1 = false;
  bool isNotify2 = false;
  bool isNotify3 = false;


  @override
  Widget build(BuildContext context) {


    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;


    return Scaffold(
      appBar: AppBar(
        backgroundColor: fondcolor,
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black,),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        title: Text(
          'Mon Compte',
          style: TextStyle(
              color: Colors.black,
              fontSize: 25,
              fontWeight: FontWeight.bold,
              fontFamily: 'BAARS'),
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
            Container(
              margin: EdgeInsets.only(top: 15),
              height: MediaQuery.of(context).size.height/1.3,
              width: MediaQuery.of(context).size.width/1.08,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Column(
                children: <Widget>[
                  SizedBox(height: 20,),
                  Container(
                    height: deviceHeight / 4,
                    width: deviceWidth / 2,
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.3),
                        shape: BoxShape.circle
                    ),
                    child: Icon(Icons.delete_sweep, color: Colors.white, size: 100,),
                  ),

                  Container(
                    margin: EdgeInsets.only(top: 20),
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
                                    fontWeight: FontWeight.bold, fontFamily: 'Barlow', color: Colors.black)),
                            TextSpan(text: "Toutes vos données (contacts, annonces, emails, ...) seront supprimés définitivement et de manière irréversible. ", style: TextStyle(
                                fontFamily: 'Barlow'
                            )),
                          ]),
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child:       Padding(
                        padding: const EdgeInsets.only(top: 12.0),
                        child: Card(
                          //color: Colors.grey.withOpacity(0.1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: Container(
                              height: 60,
                              width: 320,
                              padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                color: Colors.grey.withOpacity(0.1),
                                //border: Border.all()
                              ),
                              child: CheckboxListTile(
                                title: const Text( "Supprimer mon compte", style: TextStyle(
                                    fontFamily: 'Barlow', fontSize: 19, fontWeight: FontWeight.w300, color: Colors.black
                                ),),
                                value: isNotify ,
                                onChanged: (bool value) {
                                  setState(() {
                                    isNotify  = value;
                                  });
                                },)
                          ),
                        )
                    ),
                  ),

                  Center(
                    child: InkWell(
                      onTap: () {
                        //Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilPage()));
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 30),
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
          ],
        ),
      ),
    );
  }
}
