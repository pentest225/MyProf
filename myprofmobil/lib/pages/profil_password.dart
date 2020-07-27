import 'package:flutter/material.dart';
import 'package:myprofmobil/outils/myStyle.dart';

class ProfilPassword extends StatefulWidget {

  static const routeName = 'profilpassword';

  @override
  _ProfilPasswordState createState() => _ProfilPasswordState();
}

class _ProfilPasswordState extends State<ProfilPassword> {
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
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Changer de mot de passe', style: TextStyle(
                        fontFamily: 'BAARS', fontSize: 22, fontWeight: FontWeight.bold
                    ),),
                    Icon(Icons.lock, color: themeColor,)
                  ],
                ),
                SizedBox(height: 30,),
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
                              hintText: 'Ancien mot de passe',
                              hintStyle: TextStyle(
                                  fontWeight: FontWeight.bold, color: Colors.black54, fontSize: 18
                              ),
                              border: InputBorder.none
                          ),
                        )
                    )
                ),
                SizedBox(height: 10,),
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
                              hintText: 'Nouveau mot de passe',
                              hintStyle: TextStyle(
                                  fontWeight: FontWeight.bold, color: Colors.black54, fontSize: 18
                              ),
                              border: InputBorder.none
                          ),
                        )
                    )
                ),
                SizedBox(height: 10,),
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
                              hintText: 'Nouveau mot de passe',
                              hintStyle: TextStyle(
                                  fontWeight: FontWeight.bold, color: Colors.black54, fontSize: 18
                              ),
                              border: InputBorder.none
                          ),
                        )
                    )
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
                          child: Text('Changer mon mot de passe', style: TextStyle(
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
