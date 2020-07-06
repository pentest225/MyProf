import 'package:flutter/material.dart';
import 'package:myprofmobil/outils/myStyle.dart';

class Dashboard extends StatefulWidget {

  static const routeName = 'dashboard';

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: themeColor,
        elevation: 0,
        /*leading: Container(
            margin: EdgeInsets.only(left: 25),
            child: IconButton(
              icon: Icon(Icons.home),
              color: Colors.white,
              onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (_)=> Verify())),
            )
        ),*/
        actions: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 10),
            margin: EdgeInsets.only(right: 25),
            child: Text('MyProf', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
          )
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: <Widget>[
            SizedBox(height: 20,),
            Column(
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height/8,
                  width: MediaQuery.of(context).size.width/4,
                  decoration: BoxDecoration(
                      //color: Colors.pink,
                    shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage('assets/images/architecture.jpg'),
                          fit: BoxFit.cover,
                          /*colorFilter: ColorFilter.mode(
                              Color.fromRGBO(133, 136, 241, 1).withOpacity(1), BlendMode.darken)*/
                      )
                  ),
                ),
                SizedBox(height: 5,),
                Text('Esthy', style: TextStyle(
                  color: Colors.black87, fontWeight: FontWeight.w700, fontSize: 25, fontFamily: 'Roboto'
                ),),
                SizedBox(height: 5,),
                Text('Abidjan yopougon millionaire', style: TextStyle(
                  color: Colors.black54, fontFamily: 'BAARS', fontSize: 20
                ),),
                SizedBox(height: 10,),
                InkWell(
                  onTap: () {
                    print('esthy');
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height/16,
                    width: MediaQuery.of(context).size.width/2.1,
                    decoration: BoxDecoration(
                      color: themeColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('modifier profil', style: TextStyle(
                            color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold
                        ),),
                        SizedBox(width: 2,),
                        Icon(Icons.edit, color: Colors.white, size: 18,)
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
          Container(
            height: MediaQuery.of(context).size.height/4,
            width: MediaQuery.of(context).size.width,
            color: Colors.grey.withOpacity(0.2),
          )
          ],
        ),
      ),
    );
  }
}
