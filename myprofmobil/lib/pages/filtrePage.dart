import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:myprofmobil/outils/myStyle.dart';

import 'fifth_switch.dart';

class FiltrePage extends StatefulWidget {
  @override
  _FiltrePageState createState() => _FiltrePageState();
}

class _FiltrePageState extends State<FiltrePage> {
  String radioItem = '';

  PageController _controller = PageController();

  double _value = 1;
  void _setvalue(double value) => setState(() => _value = value);

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Container(
          height: deviceHeight,
          width: deviceWidth,
          // color: Color.fromRGBO(255, 255, 255, 1),
          decoration: BoxDecoration(
            image: DecorationImage(
                image: ExactAssetImage(backImage), fit: BoxFit.cover),
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
            child: Container(
              color: Colors.white.withOpacity(.5),
              child: Padding(
                padding: const EdgeInsets.only(left: 12.0, right: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(
                        Icons.close,
                        color: Colors.black54,
                        size: 25,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    Divider(
                      height: 5,
                    ),
                    Container(
                      height: deviceHeight / 1.2,
                      //color: Colors.teal,
                      child: ListView(
                        children: <Widget>[
                          Text(
                            'Type de cours',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                                fontFamily: 'BAARS'),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.only(top: 15),
                                    height: deviceHeight / 8,
                                    width: deviceWidth / 4,
                                    decoration: BoxDecoration(
                                        color: Colors.grey.withOpacity(0.3),
                                        shape: BoxShape.circle),
                                    child: Icon(
                                      Icons.account_balance,
                                      color: themeColor,
                                      size: 40,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    'Proche de chez vous',
                                    style: TextStyle(
                                        color: Colors.black54,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              //SizedBox(width: 30,),
                              Column(
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.only(top: 15),
                                    height: deviceHeight / 8,
                                    width: deviceWidth / 4,
                                    decoration: BoxDecoration(
                                        color: Colors.grey.withOpacity(0.3),
                                        shape: BoxShape.circle),
                                    child: Icon(
                                      Icons.map,
                                      color: themeColor,
                                      size: 40,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    'A distance',
                                    style: TextStyle(
                                        color: Colors.black54,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Divider(
                            height: 15,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                'Tarif',
                                style: TextStyle(
                                    fontFamily: 'BAARS',
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Tarif moyen: 22€',
                                style: TextStyle(
                                    fontFamily: 'BAARS',
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black87),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                'Votre budget ',
                                style: TextStyle(fontSize: 18),
                              ),
                              Text(
                                'maximum : 5000frs+',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: accanceColor,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            child: new Center(
                              child: new Column(
                                children: <Widget>[
                                  new Text(' ${(_value * 5000).round()}frs'),
                                  new Slider(
                                      activeColor: accanceColor,
                                      value: _value,
                                      onChanged: _setvalue)
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                '1er cours offert seulement',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                              FifthSwitch(),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Divider(),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Temps de réponse',
                            style: TextStyle(
                                fontFamily: 'BAARS',
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                '1er cours offert seulement',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                              FifthSwitch(),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Divider(),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Niveau',
                            style: TextStyle(
                                fontFamily: 'BAARS',
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Column(
                            children: <Widget>[
                              Container(
                                //padding: EdgeInsets.only(top: 10),
                                height: deviceHeight / 14,
                                width: deviceWidth,
                                decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.2),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                  child: RadioListTile(
                                    activeColor: accanceColor,
                                    title: Text(
                                      "A distance",
                                      style: TextStyle(
                                          color: Colors.black45, fontSize: 18),
                                    ),
                                    value: "A distance",
                                    groupValue: radioItem,
                                    onChanged: (val) {
                                      setState(() {
                                        radioItem = val;
                                      });
                                    },
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                //padding: EdgeInsets.only(top: 10),
                                height: deviceHeight / 14,
                                width: deviceWidth,
                                decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.2),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                  child: RadioListTile(
                                    activeColor: accanceColor,
                                    title: Text(
                                      "Primaire",
                                      style: TextStyle(
                                          color: Colors.black45, fontSize: 18),
                                    ),
                                    value: "Primaire",
                                    groupValue: radioItem,
                                    onChanged: (val) {
                                      setState(() {
                                        radioItem = val;
                                      });
                                    },
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                //padding: EdgeInsets.only(top: 10),
                                height: deviceHeight / 14,
                                width: deviceWidth,
                                decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.2),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                  child: RadioListTile(
                                    activeColor: accanceColor,
                                    title: Text(
                                      "Collège",
                                      style: TextStyle(
                                          color: Colors.black45, fontSize: 18),
                                    ),
                                    value: "Collège",
                                    groupValue: radioItem,
                                    onChanged: (val) {
                                      setState(() {
                                        radioItem = val;
                                      });
                                    },
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                //padding: EdgeInsets.only(top: 10),
                                height: deviceHeight / 14,
                                width: deviceWidth,
                                decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.2),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                  child: RadioListTile(
                                    activeColor: accanceColor,
                                    title: Text(
                                      "Seconde",
                                      style: TextStyle(
                                          color: Colors.black45, fontSize: 18),
                                    ),
                                    value: "Seconde",
                                    groupValue: radioItem,
                                    onChanged: (val) {
                                      setState(() {
                                        radioItem = val;
                                      });
                                    },
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                //padding: EdgeInsets.only(top: 10),
                                height: deviceHeight / 14,
                                width: deviceWidth,
                                decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.2),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                  child: RadioListTile(
                                    activeColor: accanceColor,
                                    title: Text(
                                      "Première",
                                      style: TextStyle(
                                          color: Colors.black45, fontSize: 18),
                                    ),
                                    value: "Première",
                                    groupValue: radioItem,
                                    onChanged: (val) {
                                      setState(() {
                                        radioItem = val;
                                      });
                                    },
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                //padding: EdgeInsets.only(top: 10),
                                height: deviceHeight / 14,
                                width: deviceWidth,
                                decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.2),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                  child: RadioListTile(
                                    activeColor: accanceColor,
                                    title: Text(
                                      "Terminale",
                                      style: TextStyle(
                                          color: Colors.black45, fontSize: 18),
                                    ),
                                    value: "Terminale",
                                    groupValue: radioItem,
                                    onChanged: (val) {
                                      setState(() {
                                        radioItem = val;
                                      });
                                    },
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                //padding: EdgeInsets.only(top: 10),
                                height: deviceHeight / 14,
                                width: deviceWidth,
                                decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.2),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                  child: RadioListTile(
                                    activeColor: accanceColor,
                                    title: Text(
                                      "BTS",
                                      style: TextStyle(
                                          color: Colors.black45, fontSize: 18),
                                    ),
                                    value: "BTS",
                                    groupValue: radioItem,
                                    onChanged: (val) {
                                      setState(() {
                                        radioItem = val;
                                      });
                                    },
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                //padding: EdgeInsets.only(top: 10),
                                height: deviceHeight / 14,
                                width: deviceWidth,
                                decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.2),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                  child: RadioListTile(
                                    activeColor: accanceColor,
                                    title: Text(
                                      "Supérieur",
                                      style: TextStyle(
                                          color: Colors.black45, fontSize: 18),
                                    ),
                                    value: "Supérieur",
                                    groupValue: radioItem,
                                    onChanged: (val) {
                                      setState(() {
                                        radioItem = val;
                                      });
                                    },
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                //padding: EdgeInsets.only(top: 10),
                                height: deviceHeight / 14,
                                width: deviceWidth,
                                decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.2),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                  child: RadioListTile(
                                    activeColor: accanceColor,
                                    title: Text(
                                      "Formation pour adultes",
                                      style: TextStyle(
                                          color: Colors.black45, fontSize: 18),
                                    ),
                                    value: "Formation pour adultes",
                                    groupValue: radioItem,
                                    onChanged: (val) {
                                      setState(() {
                                        radioItem = val;
                                      });
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Divider(),
                          SizedBox(
                            height: 20,
                          ),
                          InkWell(
                            onTap: () => Navigator.of(context).pop(),
                            child: Container(
                              height: deviceHeight / 14,
                              width: deviceWidth,
                              decoration: BoxDecoration(
                                color: accanceColor,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Center(
                                  child: Text(
                                'Voir 26 profs',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'BAARS',
                                    fontSize: 20),
                              )),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
