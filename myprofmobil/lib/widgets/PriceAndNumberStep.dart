import 'package:flutter/material.dart';
import 'package:myprofmobil/outils/myStyle.dart';

class PriceAndNumber extends StatelessWidget {
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
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: MediaQuery.of(context).size.height / 12,
                    width: MediaQuery.of(context).size.width / 4,
                    decoration: BoxDecoration(
                        color: accanceColor,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          topLeft: Radius.circular(10),
                        )),
                    child: Center(
                      child: Text(
                        '+225',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20),
                    height: MediaQuery.of(context).size.height / 12,
                    width: MediaQuery.of(context).size.width / 1.8,
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.1),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        )),
                    child: Center(
                      child: TextField(
                        keyboardType: TextInputType.number,
                        cursorColor: Colors.grey,
                        decoration: InputDecoration(
                            hintText: '07 00 00 07', border: InputBorder.none),
                      ),
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
