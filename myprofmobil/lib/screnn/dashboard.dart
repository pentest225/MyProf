
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
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white,),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('MyProfs'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
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
                padding: EdgeInsets.only(top: 15, left: 20, right: 20),
                height: MediaQuery.of(context).size.height/6,
                color: Colors.white.withOpacity(0.1),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Card(
                      color: accanceColor,
                      child: Container(
                        margin: EdgeInsets.all(3),
                        height: 50,
                        width: MediaQuery.of(context).size.width/3,
                        decoration: BoxDecoration(
                            color: accanceColor,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(Icons.check_circle, size: 28, color: Colors.white,),
                            SizedBox(height: 10,),
                            Text('Profil verifié', style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16
                            ),)
                          ],
                        ),
                      ),
                    ),
                    Card(
                      color: accanceColor,
                      child: Container(
                        margin: EdgeInsets.all(3),
                        height: MediaQuery.of(context).size.height/8,
                        width: MediaQuery.of(context).size.width/3,
                        decoration: BoxDecoration(
                            color: accanceColor,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('0', style: TextStyle(
                                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 28
                            ),),
                            SizedBox(height: 10,),
                            Text("Nombre d'avis", style: TextStyle(
                                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16
                            ),)
                          ],
                        ),
                      ),
                    ),
                    Card(
                      color: accanceColor,
                      child: Container(
                        margin: EdgeInsets.all(3),
                        height: MediaQuery.of(context).size.height/8,
                        width: MediaQuery.of(context).size.width/2.2,
                        decoration: BoxDecoration(
                            color: accanceColor,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('0', style: TextStyle(
                                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 28
                            ),),
                            SizedBox(height: 10,),
                            Text("Recommandations", style: TextStyle(
                                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16
                            ),)
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  //color: Colors.grey.withOpacity(0.1),
                  child: Container(
                    padding: EdgeInsets.all(8),
                    height: MediaQuery.of(context).size.height/1.7,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(right: 120),
                          child: Text('Mes demandes de cours', style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold
                          ),),
                        ),
                        SizedBox(height: 12,),
                        Container(width: 2000, color: Colors.grey.withOpacity(0.1), height: 2,),
                        SizedBox(height: 12,),
                        Row(
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage('assets/images/architecture.jpg'),
                                        fit: BoxFit.cover,
                                        /*colorFilter: ColorFilter.mode(
                                Color.fromRGBO(133, 136, 241, 1).withOpacity(1), BlendMode.darken)*/
                                      ),
                                    shape: BoxShape.circle
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 15,),
                            Column(
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Text('Louis', style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 18
                                    ),),
                                    SizedBox(width: 8,),
                                    Text('Prof de Tennis', style: TextStyle(
                                        fontWeight: FontWeight.w300, color: Colors.black54
                                    ),)
                                  ],
                                ),
                                SizedBox(height: 10,),
                                Container(
                                  width: 250,
                                    child: Text('Bonjour Louis, Je m’appelle Esthy et je cherche un professeur de Tennis. Je souhaiterais prendre les...', style: TextStyle(
                                      color: Colors.black54, fontFamily: 'BAARS', fontWeight: FontWeight.bold, fontSize: 16
                                    ),)),
                                SizedBox(height: 10,),
                                InkWell(
                                  onTap: () {},
                                  child: Container(
                                    height: 40,
                                    width: MediaQuery.of(context).size.width/1.8,
                                    decoration: BoxDecoration(
                                        color: themeColor,
                                      borderRadius: BorderRadius.circular(10)
                                    ),
                                    child: Center(
                                        child: Text('Finaliser ma demande', style: TextStyle(
                                          color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold
                                        ),)),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                        SizedBox(height: 15,),
                        Container(width: 2000, color: Colors.grey.withOpacity(0.1), height: 2,),
                        SizedBox(height: 15,),
                        Row(
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage('assets/images/architecture.jpg'),
                                        fit: BoxFit.cover,
                                        /*colorFilter: ColorFilter.mode(
                                Color.fromRGBO(133, 136, 241, 1).withOpacity(1), BlendMode.darken)*/
                                      ),
                                      shape: BoxShape.circle
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 15,),
                            Column(
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Text('Antoine', style: TextStyle(
                                        fontWeight: FontWeight.bold, fontSize: 18
                                    ),),
                                    SizedBox(width: 8,),
                                    Text('Prof de Guitare', style: TextStyle(
                                        fontWeight: FontWeight.w300, color: Colors.black54
                                    ),)
                                  ],
                                ),
                                SizedBox(height: 10,),
                                Container(
                                    width: 250,
                                    child: Text('Bonjour Louis, Je m’appelle Esthy et je cherche un professeur de Tennis. Je souhaiterais prendre les...', style: TextStyle(
                                        color: Colors.black54, fontFamily: 'BAARS', fontWeight: FontWeight.bold, fontSize: 16
                                    ),)),
                                SizedBox(height: 10,),
                                InkWell(
                                  onTap: () {},
                                  child: Container(
                                    height: 40,
                                    width: MediaQuery.of(context).size.width/1.8,
                                    decoration: BoxDecoration(
                                        color: themeColor,
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                    child: Center(
                                        child: Text('Finaliser ma demande', style: TextStyle(
                                            color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold
                                        ),)),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  //color: Colors.grey.withOpacity(0.1),
                  child: Container(
                    padding: EdgeInsets.all(8),
                    height: MediaQuery.of(context).size.height/1.3,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: 12,),
                        Container(
                          margin: EdgeInsets.only(right: 200),
                          child: Text('Mes annonces', style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold
                          ),),
                        ),
                        SizedBox(height: 12,),
                        Container(width: 2000, color: Colors.grey.withOpacity(0.1), height: 2,),
                        SizedBox(height: 12,),
                        Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Icon(Icons.person, size: 40, color: themeColor,),
                                SizedBox(width: 15,),
                                Container(
                                  width: MediaQuery.of(context).size.width/1.6,
                                  child: Text("Etudiante en école de doctorat donne des cours en anglais à moindre cout.", style: TextStyle(
                                    fontSize: 16, color: Colors.black87
                                  ),),
                                )
                              ],
                            ),
                            SizedBox(height: 15,),
                            Row(
                              children: <Widget>[
                               Container(
                                 height: 40,
                                 width: 60,
                                 decoration: BoxDecoration(
                                   color: themeColor,
                                   borderRadius: BorderRadius.circular(5),
                                 ),
                                 child: Center(
                                     child: Text('0Frs/h', style: TextStyle(
                                       color: Colors.white, fontWeight: FontWeight.bold
                                     ),)
                                 ),
                               ),
                                SizedBox(width: 15,),
                                Container(
                                  height: 40,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    color: accanceColor,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Center(
                                      child: Text('Anglais', style: TextStyle(
                                        color: Colors.white, fontWeight: FontWeight.bold
                                      ),)
                                  ),
                                ),
                                SizedBox(width: 60,),
                                Container(
                                  height: 40,
                                  width: 100,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(color: Colors.grey, width: 2)
                                  ),
                                  child: Center(
                                      child: Text('Modifier', style: TextStyle(
                                        fontWeight: FontWeight.bold, color: Colors.black54, fontSize: 15
                                      ),)),
                                )
                              ],
                            )

                          ],
                        ),
                        SizedBox(height: 20,),
                        Container(width: 2000, color: Colors.grey.withOpacity(0.1), height: 2,),
                        SizedBox(height: 20,),
                        Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Icon(Icons.person, size: 40, color: themeColor,),
                                SizedBox(width: 15,),
                                Container(
                                  width: MediaQuery.of(context).size.width/1.6,
                                  child: Text("Développeur junior en école de programmation donne des cours de developpement web et mobile.", style: TextStyle(
                                      fontSize: 16, color: Colors.black87
                                  ),),
                                )
                              ],
                            ),
                            SizedBox(height: 15,),
                            Row(
                              children: <Widget>[
                                Container(
                                  height: 40,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    color: themeColor,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Center(
                                      child: Text('0Frs/h', style: TextStyle(
                                          color: Colors.white, fontWeight: FontWeight.bold
                                      ),)
                                  ),
                                ),
                                SizedBox(width: 15,),
                                Container(
                                  height: 40,
                                  width: 120,
                                  decoration: BoxDecoration(
                                    color: accanceColor,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Center(
                                      child: Text('Programmation', style: TextStyle(
                                          color: Colors.white, fontWeight: FontWeight.bold
                                      ),)
                                  ),
                                ),
                                SizedBox(width: 20,),
                                Container(
                                  height: 40,
                                  width: 100,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(color: Colors.grey, width: 2)
                                  ),
                                  child: Center(
                                      child: Text('Modifier', style: TextStyle(
                                          fontWeight: FontWeight.bold, color: Colors.black54, fontSize: 15
                                      ),)),
                                )
                              ],
                            )
                          ],
                        ),
                        SizedBox(height: 20,),
                        Container(width: 2000, color: Colors.grey.withOpacity(0.1), height: 2,),
                        SizedBox(height: 20,),
                        Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Icon(Icons.person, size: 40, color: themeColor,),
                                SizedBox(width: 15,),
                                Container(
                                  width: MediaQuery.of(context).size.width/1.6,
                                  child: Text("Ingénieur et professeur à l'INSAAC donne des cours de musique(chants, instruments).", style: TextStyle(
                                       fontSize: 16, color: Colors.black87
                                  ),),
                                )
                              ],
                            ),
                            SizedBox(height: 15,),
                            Row(
                              children: <Widget>[
                                Container(
                                  height: 40,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    color: themeColor,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Center(
                                      child: Text('0Frs/h', style: TextStyle(
                                          color: Colors.white, fontWeight: FontWeight.bold
                                      ),)
                                  ),
                                ),
                                SizedBox(width: 15,),
                                Container(
                                  height: 40,
                                  width: 120,
                                  decoration: BoxDecoration(
                                    color: accanceColor,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Center(
                                      child: Text('Musique', style: TextStyle(
                                          color: Colors.white, fontWeight: FontWeight.bold
                                      ),)
                                  ),
                                ),
                                SizedBox(width: 20,),
                                Container(
                                  height: 40,
                                  width: 100,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(color: Colors.grey, width: 2)
                                  ),
                                  child: Center(
                                      child: Text('Modifier', style: TextStyle(
                                          fontWeight: FontWeight.bold, color: Colors.black54, fontSize: 15
                                      ),)),
                                )
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
            ],
          ),
        )
      ),
    );
  }
}
