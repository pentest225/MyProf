import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:myprofmobil/outils/myStyle.dart';

class ContainerFive extends StatefulWidget {
  @override
  _ContainerFiveState createState() => _ContainerFiveState();
}

class _ContainerFiveState extends State<ContainerFive> {

  String radioItem = '';

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
            SizedBox(height: 30,),
            Container(
                alignment: Alignment.center,
                child: SvgPicture.asset(
                  "assets/images/c.svg",
                  width: MediaQuery.of(context).size.width / 2.1,
                )),
            SizedBox(height: 20,),
            Text(
              "Ou se déroulent vos cours ?",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black87, fontSize: 25, fontFamily: 'BAARS', fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 30,),
            Container(
              height: MediaQuery.of(context).size.height/1.9,
              width: MediaQuery.of(context).size.width/1.1,
              color: Colors.grey.withOpacity(0.1),
              child: Column(
                children: <Widget>[
                  SizedBox(height: 20,),
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
                      title: Text("je peux encadrer l'élève à mon domicile", style: TextStyle(
                          color: Colors.black45, fontWeight: FontWeight.bold, fontSize: 18
                      ),),
                      value: "je peux encadrer l'élève à mon domicile",
                      groupValue: radioItem,
                      onChanged: (val) {
                        setState(() {
                          radioItem = val;
                        });
                      },
                    ),
                  ),
                  SizedBox(height: 12,),
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
                      title: Text("je peux me déplacer chez l'élève", style: TextStyle(
                          color: Colors.black45, fontWeight: FontWeight.bold, fontSize: 18
                      ),),
                      value: "je peux me déplacer chez l'élève",
                      groupValue: radioItem,
                      onChanged: (val) {
                        setState(() {
                          radioItem = val;
                        });
                      },
                    ),
                  ),
                  SizedBox(height: 12,),
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
                      title: Text("je peux donner des cours par webcam", style: TextStyle(
                          color: Colors.black45, fontWeight: FontWeight.bold, fontSize: 18
                      ),),
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
            SizedBox(height: 30,),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    child: Container(
                      width:  150,
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
                      width:  150,
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
                            child: Text('Suivant', style: TextStyle(
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
            SizedBox(height: 30,),
          ],
        ),
      ),
    );
  }
}
