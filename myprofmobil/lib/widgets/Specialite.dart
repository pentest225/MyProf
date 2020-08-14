import 'package:flutter/material.dart';
import 'package:myprofmobil/outils/myStyle.dart';
import 'package:myprofmobil/screnn/suivant.dart';

class Specialite extends StatelessWidget {
  String titre;
  IconData myIcon;
  Specialite(this.titre,this.myIcon);
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Suivant()));
          },
          child: Container(
            height: 140,
            width: 140,
            decoration: BoxDecoration(
                color: Colors.white,
                //border: Border.all(color: Color.fromRGBO(17, 122, 139, 1), width: 1),
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                        color: themeColor.withOpacity(0.4),
                        shape: BoxShape.circle),
                    child: Icon(
                      myIcon,
                      size: 35,
                      color: themeColor,
                    )),
                SizedBox(
                  height: 15,
                ),
                Center(
                  child: Text(
                    titre,
                    style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                        fontSize: 17),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
