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
        child:SingleChildScrollView(
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
                      child: Icon(Icons.lock, color: Colors.white, size: 100,),
                    ),

                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Column(
                        children: <Widget>[
                          Padding(
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
                                    child: TextField(
                                      cursorColor: Colors.grey,
                                      decoration: InputDecoration(
                                          hintText: 'Ancien mot de passe',
                                          hintStyle: TextStyle(
                                              fontWeight: FontWeight.w500, color: Colors.black87, fontSize: 18, fontFamily: 'Barlow'
                                          ),
                                          border: InputBorder.none
                                      ),
                                    )
                                ),
                              )
                          ),
                          Padding(
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
                                    child: TextField(
                                      cursorColor: Colors.grey,
                                      decoration: InputDecoration(
                                          hintText: 'Nouveau mot de passe',
                                          hintStyle: TextStyle(
                                              fontWeight: FontWeight.w500, color: Colors.black87, fontSize: 18, fontFamily: 'Barlow'
                                          ),
                                          border: InputBorder.none
                                      ),
                                    )
                                ),
                              )
                          ),
                          Padding(
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
                                    child: TextField(
                                      cursorColor: Colors.grey,
                                      decoration: InputDecoration(
                                          hintText: 'Nouveau mot de passe',
                                          hintStyle: TextStyle(
                                              fontWeight: FontWeight.w500, color: Colors.black87, fontSize: 18, fontFamily: 'Barlow'
                                          ),
                                          border: InputBorder.none
                                      ),
                                    )
                                ),
                              )
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
                                    child: Text('Changer mon mot de passe', style: TextStyle(
                                        color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18, fontFamily: 'BAARS'
                                    ),)
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )

                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
