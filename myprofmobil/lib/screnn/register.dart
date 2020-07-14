import 'package:flutter/material.dart';
import 'package:myprofmobil/outils/myStyle.dart';

class Registered extends StatefulWidget {

  static const routeName = '/register';

  @override
  _RegisteredState createState() => _RegisteredState();
}

class _RegisteredState extends State<Registered> {
  @override
  Widget build(BuildContext context) {

    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;


    return Scaffold(
      body: Container(
        height: deviceHeight,
        width: deviceWidth,
        color: fondcolor,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                height: deviceHeight/2.8,
                decoration: BoxDecoration(
                  //color: themeColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(100)
                  ),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [themeColor, Colors.orangeAccent]
                  )
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: 50,),
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                          child: Icon(Icons.arrow_back, color: Colors.white,)),
                      SizedBox(height: 50,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('Inscription', style: TextStyle(
                            fontFamily: 'BAARS', fontWeight: FontWeight.bold, fontSize: 40, color: Colors.white
                          ),),
                          SizedBox(width: 5,),
                          Icon(Icons.people, size: 40, color: Colors.white,)
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 50,),
             Card(
               elevation: 3,
               shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(30),
               ),
               child:  Container(
                 padding: EdgeInsets.only(left: 15),
                 height: 50,
                 width: 320,
                 decoration: BoxDecoration(
                     color: Colors.white,
                     borderRadius: BorderRadius.circular(30)
                 ),
                 child: TextField(
                   decoration: InputDecoration(
                     border: InputBorder.none,
                     hintText: 'Username',
                     icon: Icon(Icons.person, size: 18,)
                   ),
                 ),
               ),
             ),
              SizedBox(height: 10,),
              Card(
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                child:  Container(
                  padding: EdgeInsets.only(left: 15),
                  height: 50,
                  width: 320,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Email',
                        icon: Icon(Icons.mail, size: 18,)
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Card(
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                child:  Container(
                  padding: EdgeInsets.only(left: 15),
                  height: 50,
                  width: 320,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Contact',
                        icon: Icon(Icons.call, size: 18,)
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Card(
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                child:  Container(
                  padding: EdgeInsets.only(left: 15),
                  height: 50,
                  width: 320,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Mot de passe',
                        icon: Icon(Icons.lock, size: 18,)
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30,),
              Container(
                height: 40,
                width: 200,
                decoration: BoxDecoration(
                    color: themeColor,
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [themeColor, Colors.orangeAccent]
                    )
                ),
                child: Center(
                    child: Text("s'inscrire", style: TextStyle(
                      color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold
                    ),)
                ),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Déja un compte? ', style: TextStyle(
                    color: Colors.black54, fontSize: 16, fontFamily: 'BAARS'
                  ),),
                  Text('Se connecter', style: TextStyle(
                      color: themeColor, fontSize: 16, fontFamily: 'BAARS', fontWeight: FontWeight.bold
                  ),),

                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
