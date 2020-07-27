import 'package:flutter/material.dart';
import 'package:myprofmobil/outils/myStyle.dart';

class PlaceCours extends StatefulWidget {
  @override
  _PlaceCoursState createState() => _PlaceCoursState();
}

class _PlaceCoursState extends State<PlaceCours> {
  String radioItem = '';
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(right: 100),
              child: Text(
                "Ou se déroulent vos cours ?",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 20,
                    fontFamily: 'BAARS',
                    fontWeight: FontWeight.w700),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: MediaQuery.of(context).size.height / 1.9,
              width: MediaQuery.of(context).size.width / 1.1,
              color: Colors.grey.withOpacity(0.1),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 20),
                    height: 100,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: RadioListTile(
                      activeColor: accanceColor,
                      title: Text(
                        "je peux encadrer l'élève à mon domicile",
                        style: TextStyle(
                            color: Colors.black45,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      value: "je peux encadrer l'élève à mon domicile",
                      groupValue: radioItem,
                      onChanged: (val) {
                        setState(() {
                          radioItem = val;
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 20),
                    height: 100,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: RadioListTile(
                      activeColor: accanceColor,
                      title: Text(
                        "je peux me déplacer chez l'élève",
                        style: TextStyle(
                            color: Colors.black45,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      value: "je peux me déplacer chez l'élève",
                      groupValue: radioItem,
                      onChanged: (val) {
                        setState(() {
                          radioItem = val;
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 20),
                    height: 100,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: RadioListTile(
                      activeColor: accanceColor,
                      title: Text(
                        "je peux donner des cours par webcam",
                        style: TextStyle(
                            color: Colors.black45,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      value: "je peux donner des cours par webcam",
                      groupValue: radioItem,
                      onChanged: (val) {
                        setState(() {
                          radioItem = val;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
