import 'package:flutter/material.dart';
import 'package:myprofmobil/outils/myStyle.dart';
import 'package:myprofmobil/widgets/multiSelectChip.dart';

class ContainerTwo extends StatefulWidget {
  @override
  _ContainerTwoState createState() => _ContainerTwoState();
}

class _ContainerTwoState extends State<ContainerTwo> {

  PageController _controller = PageController();

  List<String> competences = [
    'JavaScript',
    'Python',
    'Html',
    'Intelligence artificielle',
    'Css',
    'PostgreSql',
    'Visual basic',
    'Flutter',
    'Golang',
    'PHP',
  ];

  List<String> returnList;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Informatique",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 28,
                      fontFamily: 'BAARS',
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        color: themeColor,
                        borderRadius: BorderRadius.circular(5)),
                    child: Icon(
                      Icons.desktop_mac,
                      size: 20,
                      color: Colors.white,
                    )),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "Veuillez clicker sur vos compétences (5maximums)...",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 18,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 20,
            ),
            MultiSelectedChip(
              competences,
              myReturnList: (myList) {
                setState(() {
                  returnList = myList;
                });
              },
            ),
            SizedBox(
              height: 100,
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    child: Container(
                      width: 150,
                      height: 40.0,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              Colors.deepPurple,
                              Color.fromRGBO(133, 136, 241, 1)
                            ]),
                      ),
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () {
                            _controller.previousPage(
                                duration: Duration(milliseconds: 300),
                                curve: Curves.ease);
                          },
                          child: Center(
                            child: Text(
                              'Retour',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16),
                            ),
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
                      width: 150,
                      height: 40.0,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              Colors.deepPurple,
                              Color.fromRGBO(133, 136, 241, 1)
                            ]),
                      ),
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () {
                            _controller.nextPage(
                                duration: Duration(milliseconds: 300),
                                curve: Curves.ease);
                          },
                          child: Center(
                            child: Text(
                              'Suivant',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
