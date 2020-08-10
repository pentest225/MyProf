import 'package:flutter/material.dart';
import 'package:myprofmobil/outils/myStyle.dart';

class ProfilNotification extends StatefulWidget {

  static const routeName = 'profilnotification';

  @override
  _ProfilNotificationState createState() => _ProfilNotificationState();
}

class _ProfilNotificationState extends State<ProfilNotification> {

  String radioItem = '';
  String radioIdem = '';
  String radioInem = '';
  String radioImem = '';

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
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Notifications', style: TextStyle(
                        fontFamily: 'BAARS', fontSize: 22, fontWeight: FontWeight.bold
                    ),),
                    Icon(Icons.notifications_active, color: themeColor,)
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 15),
                  height: MediaQuery.of(context).size.height/1.1,
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
                            Container(
                              padding: EdgeInsets.only(left: 10),
                              alignment: Alignment.topLeft,
                              margin: EdgeInsets.only(top: 10),
                              child: Text('SMS', style: TextStyle(
                                  color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold
                              ),),
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
                                      child: CheckboxListTile(
                                        title: const Text( "Demandes de cours ", style: TextStyle(
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
                          Container(
                            padding: EdgeInsets.only(left: 10),
                            alignment: Alignment.topLeft,
                            margin: EdgeInsets.only(top: 10),
                            child: Text('EMAIL', style: TextStyle(
                                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold,
                            ),),
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
                                      child: CheckboxListTile(
                                        title: const Text(  "Activités du compte ", style: TextStyle(
                                            fontFamily: 'Barlow', fontSize: 19, fontWeight: FontWeight.w300, color: Colors.black
                                        )),
                                        value: isNotify1 ,
                                        onChanged: (bool value) {
                                          setState(() {
                                            isNotify1  = value;
                                          });
                                        },)
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
                                      child: CheckboxListTile(
                                        title: const Text( "Demandes de cours ", style: TextStyle(
                                            fontFamily: 'Barlow', fontSize: 19, fontWeight: FontWeight.w300, color: Colors.black
                                        )),
                                        value: isNotify2 ,
                                        onChanged: (bool value) {
                                          setState(() {
                                            isNotify2  = value;
                                          });
                                        },)
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
                                      child: CheckboxListTile(
                                        title: const Text( "Offres sur mes annonces", style: TextStyle(
                                            fontFamily: 'Barlow', fontSize: 19, fontWeight: FontWeight.w300, color: Colors.black
                                        )),
                                        value: isNotify3,
                                        onChanged: (bool value) {
                                          setState(() {
                                            isNotify3 = value;
                                          });
                                        },)
                                  ),
                                )
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
      ),
    );
  }
}
