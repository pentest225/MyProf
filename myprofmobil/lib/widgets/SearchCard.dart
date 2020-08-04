import 'package:flutter/material.dart';
import 'package:myprofmobil/outils/myStyle.dart';
import '../screnn/searchPage.dart';
//Classe pour le champ widget de recherche
class SearchCard extends StatefulWidget {
  @override
  _SearchCardlState createState() => _SearchCardlState();
}

class _SearchCardlState extends State<SearchCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          InkWell(
            onTap: () {
              Navigator.of(context).pushNamed(
                SearchPage.routeName,
              );
            },
            child: Container(
              height: 50,
              width: MediaQuery.of(context).size.width / 1.1,
              decoration: BoxDecoration(
                  color: Color(0xfff1f1f1),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Row(children: <Widget>[
                Flexible(
                    flex: 4,
                    child: Container(
                        padding: EdgeInsets.only(top: 3, left: 10),
                        alignment: Alignment.center,
                        child: Row(
                          children: [
                            Flexible(
                                child: Icon(
                              Icons.search,
                              size: 22,
                            )),
                            Flexible(
                              flex: 2,
                              child: Text("essayer Maths,.."),
                            ),
                          ],
                        ))),
                Flexible(
                    flex: 2,
                    child: Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.all(4),
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      child: Text(
                        "Rechercher",
                        style: TextStyle(color: Colors.white),
                      ),
                      decoration: BoxDecoration(
                          color: accanceColor.withOpacity(.8),
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                    )),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}

//End chanp de recherche widget 