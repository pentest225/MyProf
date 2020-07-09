import 'package:flutter/material.dart';
import 'package:myprofmobil/outils/myStyle.dart';

class ContainerHuit extends StatefulWidget {
  @override
  _ContainerHuitState createState() => _ContainerHuitState();
}

class _ContainerHuitState extends State<ContainerHuit> {

  PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: 50,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Votre plus beau profil",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black87, fontSize: 25, fontFamily: 'BAARS', fontWeight: FontWeight.w700),
              ),
            ),
            SizedBox(height: 30,),
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                  color: themeColor,
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage('assets/images/books.jpg'),
                      fit: BoxFit.cover)
              ),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height/18,
                  width: MediaQuery.of(context).size.width/3,
                  decoration: BoxDecoration(
                      color: accanceColor,
                      borderRadius: BorderRadius.circular(100)
                  ),
                  child: Center(
                      child: Text('Télécharger', style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14
                      ),)
                  ),
                ),
                SizedBox(width: 10,),
                Container(
                  height: MediaQuery.of(context).size.height/18,
                  width: MediaQuery.of(context).size.width/3,
                  decoration: BoxDecoration(
                      color: accanceColor,
                      borderRadius: BorderRadius.circular(100)
                  ),
                  child: Center(
                      child: Text('Récadrer', style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14
                      ),)
                  ),
                ),
              ],
            ),
            SizedBox(height: 40,),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    child: Container(
                      width:  100,
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
                            _controller.previousPage(duration: Duration(milliseconds: 300), curve:Curves.ease);
                          },
                          child: Center(
                            child: Text('Retour', style: TextStyle(
                                color: Colors.white, fontWeight: FontWeight.w700, fontSize: 16
                            ),),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    child: Container(
                      width:  210,
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
                            _controller.nextPage(duration: Duration(milliseconds: 300), curve:Curves.ease);
                          },
                          child: Center(
                            child: Text('Terminer mon annonce', style: TextStyle(
                                color: Colors.white, fontWeight: FontWeight.w700, fontSize: 16
                            ),),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
