import 'package:flutter/material.dart';
import 'package:myprofmobil/outils/myStyle.dart';

class ContainerFour extends StatefulWidget {
  @override
  _ContainerFourState createState() => _ContainerFourState();
}

class _ContainerFourState extends State<ContainerFour> {

  PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 50,
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
              height: 30,
            ),
            Text(
              'Trouvons un beau titre pour votre annonce',
              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 18,
                  fontFamily: 'Roboto',
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
                    hintText:
                    'Ex: Ingénieur informatique donne des cours...',
                    hintStyle:
                    TextStyle(color: Colors.black54, fontSize: 18),
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
                  color: accanceColor,
                  borderRadius: BorderRadius.circular(10)),
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
