import 'package:flutter/material.dart';
import 'package:myprofmobil/outils/myStyle.dart';
import 'authentification/login/login.dart';
import 'test.dart';

//PAGE DE CONNEXION OU INSCRIPTION
class FirstPage extends StatelessWidget {

  static const routeName = '/firstpage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          //color: Colors.green,
          image: DecorationImage(
            image: AssetImage(backImage),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken)
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
           // SizedBox(height: 150,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('MyProf', style: TextStyle(
                  color: Colors.white, fontSize: 50, fontWeight: FontWeight.bold, fontFamily: 'BAARS'
                ),),
                SizedBox(width: 5,),
                Icon(Icons.school, size: 50, color: themeColor,)
              ],
            ),
           SizedBox(height: 150,),
            Column(
              children: <Widget>[
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height/14,
                    width: MediaQuery.of(context).size.width/1.3,
                    decoration: BoxDecoration(
                        color: themeColor,
                      borderRadius: BorderRadius.circular(50)
                    ),
                    child: Center(
                        child: Text("Se connecter", style: TextStyle(
                            color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold
                        ),)
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => TestPage()));
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height/14,
                    width: MediaQuery.of(context).size.width/1.3,
                    decoration: BoxDecoration(
                        color: fondcolor,
                        borderRadius: BorderRadius.circular(50),
                      //border: Border.all(color: themeColor, width: 2)
                    ),
                    child: Center(
                        child: Text("S'inscrire", style: TextStyle(
                          color: themeColor, fontSize: 22, fontWeight: FontWeight.bold
                        ),)
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
