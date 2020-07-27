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
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('SMS', style: TextStyle(
                  color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold
                ),),
              ),
              SizedBox(height: 10,),
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
                    "Demandes de cours ",
                    style: TextStyle(
                        color: Colors.black45,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  value: "Demandes de cours",
                  groupValue: radioItem,
                  onChanged: (val) {
                    setState(() {
                      radioItem = val;
                    });
                  },
                ),
              ),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('EMAIL', style: TextStyle(
                    color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold
                ),),
              ),
              SizedBox(height: 10,),
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
                    "Activités du compte ",
                    style: TextStyle(
                        color: Colors.black45,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  value: "Activités du compte",
                  groupValue: radioIdem ,
                  onChanged: (val) {
                    setState(() {
                      radioIdem  = val;
                    });
                  },
                ),
              ),
              SizedBox(height: 15,),
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
                    "Demandes de cours ",
                    style: TextStyle(
                        color: Colors.black45,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  value: "Demandes de cours ",
                  groupValue: radioInem,
                  onChanged: (val) {
                    setState(() {
                      radioInem = val;
                    });
                  },
                ),
              ),
              SizedBox(height: 15,),
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
                    "Offres sur mes annonces",
                    style: TextStyle(
                        color: Colors.black45,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  value: "Offres sur mes annonces",
                  groupValue: radioImem,
                  onChanged: (val) {
                    setState(() {
                      radioImem = val;
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
