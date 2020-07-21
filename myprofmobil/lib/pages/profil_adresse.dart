import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:myprofmobil/outils/myStyle.dart';

class ProfilAdresse extends StatefulWidget {

  static const routeName = 'profiladresse';

  @override
  _ProfilAdresseState createState() => _ProfilAdresseState();
}

class _ProfilAdresseState extends State<ProfilAdresse> {
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
                  Text('Adresse postale', style: TextStyle(
                      fontFamily: 'BAARS', fontSize: 22, fontWeight: FontWeight.bold
                  ),),
                  Icon(Icons.location_on, color: themeColor,)
                ],
              ),
              SizedBox(height: 20,),
              Container(
                height: 500,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    //color: Colors.teal,
                    image: DecorationImage(
                      image: AssetImage('assets/images/maps.jpg'),
                      fit: BoxFit.cover
                    )
                  ),
                  //alignment: Alignment.center,
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 50,),
                      Container(
                        height: 50,
                          width:MediaQuery.of(context).size.width/1.2,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Center(
                              child: Text('Abidjan Abobo Soghefia', style: TextStyle(
                                color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 20
                              ),)
                          )
                      )
                    ],
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
