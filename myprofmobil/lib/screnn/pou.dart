import 'package:flutter/material.dart';
import 'package:myprofmobil/outils/myStyle.dart';
import 'package:myprofmobil/screnn/detailleDemande.dart';

class PouPage extends StatefulWidget {
  @override
  _PouPageState createState() => _PouPageState();
}

class _PouPageState extends State<PouPage> {

  List<String> images = [
    'assets/images/fille.jpg',
    'assets/images/fille.jpg',
    'assets/images/fille.jpg',
    'assets/images/fille.jpg',
  ];


  @override
  Widget build(BuildContext context) {

    var item;
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
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: ListView(
            children: <Widget>[
              Container(
                height: 250,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: themeColor,
                    image: DecorationImage(
                        image: AssetImage(backImage),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                           Colors.black54, BlendMode.darken)
                    )
                ),
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 20,),
                    Center(
                      child: Text(
                        " Cours de photographie",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white, fontSize: 25, fontFamily: 'BAARS', fontWeight: FontWeight.w700),
                      ),
                    ),
                    SizedBox(height: 50,),
                    Container(
                        padding: EdgeInsets.only(left: 12),
                        height: 40,
                        width: 270,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: 'Trouver un lieu...',
                              hintStyle: TextStyle(
                                  color: Colors.black54
                              ),
                              icon: Icon(Icons.location_on, size: 18, color: Colors.grey),
                              border: InputBorder.none
                          ),
                        )
                    ),
                    SizedBox(height: 10,),
                    Container(
                      height: 40,
                      width: 120,
                      decoration: BoxDecoration(
                        color: themeColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                          child: Text('Rechercher', style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold
                          ),)
                      ),
                    )
                  ],
                ),

              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Quelques professeurs particuliers en photographie",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'BAARS',
                    fontWeight: FontWeight.w700
                ),
              ),
              SizedBox(height: 20,),
              Wrap(
                children: <Widget>[
                  for (item in images) Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => DetailleAnnonce()));
                      },
                      child: Container(
                        margin: EdgeInsets.only(left: 2),
                        height:290,
                        width: 160,
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 150,
                              width: MediaQuery.of(context).size.width/1.2,
                              decoration: BoxDecoration(
                                //color: Colors.grey,
                                  borderRadius: BorderRadius.circular(2),
                                  image: DecorationImage(
                                      image: AssetImage('$item'),
                                      fit: BoxFit.cover,
                                      colorFilter: ColorFilter.mode(
                                          Colors.black54.withOpacity(0.2), BlendMode.darken)
                                  )
                              ),
                              child: Column(
                                children: <Widget>[
                                  Container(
                                      margin: EdgeInsets.only(top: 100, right: 60),
                                      child: Text("Guillaume", style: TextStyle(
                                          color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18
                                      ),)
                                  ),
                                  Container(
                                    margin: EdgeInsets.only( right: 80),
                                    child: Text('Yopougon', style: TextStyle(
                                        color: Colors.white, fontSize: 15, fontWeight: FontWeight.w400
                                    ),),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 5,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Chip(
                                  label: Text('2500frs/h'),
                                  labelStyle: TextStyle(
                                      color: Colors.white, fontSize: 10,
                                  ),
                                  backgroundColor: themeColor,
                                ),
                                SizedBox(width: 5,),
                                Chip(
                                  label: Row(
                                    children: <Widget>[
                                      Text('4,9'),
                                      Icon(Icons.star, color: Colors.orangeAccent, size: 16,),
                                    ],
                                  ),
                                  labelStyle: TextStyle(
                                      color: Colors.white, fontSize: 10
                                  ),
                                  backgroundColor: Color.fromRGBO(17, 122, 139, 1),
                                )
                              ],
                            ),
                            //SizedBox(height: 5,),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Faites-vous plaisir avec votre appareil numérique en oubliant le mode automatique !', style: TextStyle(
                                  color: Colors.black, fontSize: 14, fontFamily: 'BAARS', fontWeight: FontWeight.w700
                              ),),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child:             ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  child: Container(
                    width:  250,
                    height: 40.0,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [Colors.deepPurple, Color.fromRGBO(133, 136, 241, 1)]
                      ),
                    ),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {},
                        child: Center(
                          child: Text('Voir plus de professeurs', style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w700, fontSize: 20
                          ),),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 25,),
              Container(
                height:200,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),

    );
  }
}
