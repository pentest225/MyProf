import 'package:flutter/material.dart';
import 'package:myprofmobil/outils/myStyle.dart';
import 'package:myprofmobil/screnn/dashboard.dart';

class ContainerNeuf extends StatefulWidget {
  @override
  _ContainerNeufState createState() => _ContainerNeufState();
}

class _ContainerNeufState extends State<ContainerNeuf> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Felicitations votre annonce est complète !!!",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black87, fontSize: 25, fontFamily: 'BAARS', fontWeight: FontWeight.w700),
              ),
            ),
            SizedBox(height: 16,),
            Container(
                padding: EdgeInsets.all(12),
                child: Text("Dernière petite chose : enrichissez la avec des recommandations d'amis, de collègues ou d'anciens élèves..."
                    "Plus vous en avez, plus elle sera appreciée et mieux elle sera positionnée .", style: TextStyle(
                    color: Colors.black54, fontSize: 18
                ),)
            ),
            SizedBox(height: 16,),
            Container(
              height: MediaQuery.of(context).size.height/1,
              width: MediaQuery.of(context).size.width/1.1,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey.withOpacity(0.2), width: 1)
              ),
              child: Column(
                children: <Widget>[
                  SizedBox(height: 10,),
                  Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                        color: themeColor,
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage('assets/images/books.jpg'),
                            fit: BoxFit.cover)
                    ),
                  ),
                  SizedBox(height: 5,),
                  Text('DAGOUAGA', style: TextStyle(
                      fontSize: 25, fontWeight: FontWeight.bold
                  ),),
                  SizedBox(height: 5,),
                  Container(
                    height: MediaQuery.of(context).size.height/18,
                    width: MediaQuery.of(context).size.width/4,
                    decoration: BoxDecoration(
                        color: accanceColor,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Center(
                        child: Text('100frs/h', style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14
                        ),)
                    ),
                  ),
                  SizedBox(height: 15,),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Center(
                        child: Text('Simplissime, demandez des recommandations à vos amis via :', style: TextStyle(
                            fontFamily: 'BAARS', fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black54
                        ),)),
                  ),
                  SizedBox(height: 20,),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.only(left: 10),
                      height: 50,
                      width: MediaQuery.of(context).size.width/1.2,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(100)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(Icons.message, size: 18, color: Colors.white,),
                          SizedBox(width: 5,),
                          Text('SMS', style: TextStyle(
                              color: Colors.white, fontSize: 18, fontFamily: 'BAARS', fontWeight: FontWeight.w700
                          ),)
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.only(left: 10),
                      height: 50,
                      width: MediaQuery.of(context).size.width/1.2,
                      decoration: BoxDecoration(
                          color: Colors.pink,
                          borderRadius: BorderRadius.circular(100)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(Icons.mail, size: 18, color: Colors.white,),
                          SizedBox(width: 5,),
                          Text('Mail', style: TextStyle(
                              color: Colors.white, fontSize: 18, fontFamily: 'BAARS', fontWeight: FontWeight.w700
                          ),)
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.only(left: 10),
                      height: 50,
                      width: MediaQuery.of(context).size.width/1.2,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(59, 89, 152, 1),
                          borderRadius: BorderRadius.circular(100)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'f',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 18),
                          ),
                          SizedBox(width: 15,),
                          Text('Facebook', style: TextStyle(
                              color: Colors.white, fontSize: 18, fontFamily: 'BAARS', fontWeight: FontWeight.w700
                          ),)
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.only(left: 10),
                      height: 50,
                      width: MediaQuery.of(context).size.width/1.2,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(93, 153, 251, 1),
                          borderRadius: BorderRadius.circular(100)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(Icons.message, size: 18, color: Colors.white,),
                          SizedBox(width: 5,),
                          Text('Messenger', style: TextStyle(
                              color: Colors.white, fontSize: 18, fontFamily: 'BAARS', fontWeight: FontWeight.w700
                          ),)
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.only(left: 10),
                      height: 50,
                      width: MediaQuery.of(context).size.width/1.2,
                      decoration: BoxDecoration(
                          color: accanceColor,
                          borderRadius: BorderRadius.circular(100)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 18,
                            width: 18,
                            color: Colors.white,
                            child: Center(
                                child: Text(
                                  'in',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: accanceColor,
                                      fontSize: 15),
                                )),
                          ),
                          SizedBox(width: 5,),
                          Text('Linkedin', style: TextStyle(
                              color: Colors.white, fontSize: 18, fontFamily: 'BAARS', fontWeight: FontWeight.w700
                          ),)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                child: Container(
                  width:  200,
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
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Dashboard()));
                      },
                      child: Center(
                        child: Text('Terminer', style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w700, fontSize: 16
                        ),),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30,),
          ],
        ),
      ),
    );
  }
}
