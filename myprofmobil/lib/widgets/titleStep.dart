import 'package:flutter/material.dart';
import 'package:myprofmobil/outils/myStyle.dart';

class TitleStep extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    return Container(
      height: deviceHeight,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //TITRE DU COUR
            Text(
              'Trouvons un beau titre pour votre annonce',
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 20,
                  fontFamily: 'BAARS',
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
                padding: EdgeInsets.only(left: 12),
                //smargin: EdgeInsets.only(left: 15),
                height: 100,
                width: MediaQuery.of(context).size.width / 1.05,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey, width: 1),
                ),
                child: TextField(
                  //keyboardType: TextInputType.multiline,
                  maxLines: null,
                  decoration: InputDecoration(
                    hintText: 'Ex: Ingénieur informatique donne des cours...',
                    hintStyle: TextStyle(color: Colors.black54, fontSize: 18),
                    border: InputBorder.none,
                    //icon: Icon(Icons.mail, size: 18, color:  Color.fromRGBO(17, 122, 139, 1)),
                  ),
                )),
            SizedBox(
              height: 35,
            ),
            Container(
              height: 150,
              width: MediaQuery.of(context).size.width / 1.2,
              decoration: BoxDecoration(
                  color: accanceColor, borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Attention:',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontFamily: 'BAARS',
                        fontWeight: FontWeight.w600),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Votre titre est la clef de voûte de votre annonce. Bichonnez-le, il doit être accrocheur et contenir au moins 12 mots, comme'
                        'L’intitulé des matières que vous enseignez,  Vos spécificités (diplôme, méthode, etc.)',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontFamily: 'BAARS',
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),

            //END TITRE DU COURS
          ],
        ),
      ),
    );
  }
}
