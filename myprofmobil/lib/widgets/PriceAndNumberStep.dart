import 'package:flutter/material.dart';
import 'package:myprofmobil/outils/myStyle.dart';

class PriceAndNumber extends StatefulWidget {
  @override
  _PriceAndNumberState createState() => _PriceAndNumberState();
}

class _PriceAndNumberState extends State<PriceAndNumber> {
  List<String> categories = [
    '1 H',
    '45 M',
  ];
  String radioItem = '';
  String _chosenValue = '1 H';
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: FAProgressBar(
            //     progressColor: accanceColor,
            //     currentValue: 75,
            //     displayText: '%',
            //     animatedDuration: Duration(seconds: 1),
            //     maxValue: 100,
            //   ),
            // ),
            /*Padding(
                            padding: EdgeInsets.all(8.0),
                            child: new LinearPercentIndicator(
                              width: MediaQuery.of(context).size.width/1.1,
                              animation: true,
                              lineHeight: 20.0,
                              animationDuration: 2000,
                              percent: 0.75,
                              center: Text("75.0%", style: TextStyle(
                                  color: Colors.white
                              ),),
                              linearStrokeCap: LinearStrokeCap.roundAll,
                              progressColor: accanceColor,
                            ),
                          ),*/

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Votre tarrif et votre numéro ?",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 25,
                    fontFamily: 'BAARS',
                    fontWeight: FontWeight.w700),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(left: 20),
                    height: MediaQuery.of(context).size.height / 12,
                    width: MediaQuery.of(context).size.width / 1.8,
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.1),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        )),
                    child: Center(
                      child: TextField(
                        keyboardType: TextInputType.number,
                        cursorColor: Colors.grey,
                        decoration: InputDecoration(
                            hintText: '2500', border: InputBorder.none),
                      ),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 12,
                    width: MediaQuery.of(context).size.width / 4,
                    decoration: BoxDecoration(
                        color: accanceColor,
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(10),
                          topRight: Radius.circular(10),
                        )),
                    child: Center(
                      child: Text(
                        'Frs/h',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Offrir Son premier Cour ",
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 25,
                  fontFamily: 'BAARS',
                  fontWeight: FontWeight.w700),
            ),
            Container(
                padding: EdgeInsets.all(20),
                child: Text(
                  "Offrir son premier cour histoir de donné confiance ,bien possé les bases du cour avec votre éleve ",
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                )),
            Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.grey[90],
                borderRadius: BorderRadius.circular(5),
              ),
              child: RadioListTile(
                activeColor: accanceColor,
                title: Text(
                  "Oui je souhaite offrir ma premierre sceance de cour",
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
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(left: 20),
                    height: MediaQuery.of(context).size.height / 12,
                    width: MediaQuery.of(context).size.width / 1.8,
                    decoration: BoxDecoration(
                        color: accanceColor,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        )),
                    child: Center(
                        child: Text(
                            "J'offre mon promier cour pour une durée de ",style:TextStyle(color: Colors.white),),),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 12,
                    width: MediaQuery.of(context).size.width / 4,
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(.1),
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(10),
                          topRight: Radius.circular(10),
                        )),
                    child: Center(
                      child: DropdownButton<String>(
                        value: _chosenValue,
                        // underline: Container(), // this is the magic
                        items: <String>[
                          '00 H',
                          '1 H',
                          '45 M',
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: TextStyle(
                                  color: accanceColor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          );
                        }).toList(),
                        onChanged: (String value) {
                          setState(() {
                            _chosenValue = value;
                          });
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
