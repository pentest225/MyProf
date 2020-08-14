import 'package:flutter/material.dart';
import 'package:myprofmobil/outils/myStyle.dart';

import 'feature_annonce/components/section_separator.dart';

class MessageDetail extends StatefulWidget {

  static const routeName = "messagedetail";

  @override
  _MessageDetailState createState() => _MessageDetailState();
}

class _MessageDetailState extends State<MessageDetail> {
  @override
  Widget build(BuildContext context) {


    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Container(
          height: deviceHeight,
          width: deviceWidth,
          color: fondcolor,
          child:SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: deviceHeight * .01),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            IconButton(
                                icon: Icon(Icons.arrow_back, color: Colors.black,),
                                onPressed: () {
                                  Navigator.pop(context);
                                }
                            ),
                            // SizedBox(width: 10,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text('Patrick ', style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20, fontFamily: 'Barlow'
                                ),),
                                SizedBox(height: 3,),
                                Text('vu à 15h30', style: TextStyle(
                                    fontFamily: 'Barlow', fontWeight: FontWeight.w500, color: Colors.black54
                                ),)
                              ],
                            ),
                            Container(
                              height: deviceHeight * .06,
                              width: deviceWidth / 8,
                              decoration: BoxDecoration(
                                //color: Colors.red,
                                  borderRadius: BorderRadius.circular(100),
                                  image: DecorationImage(
                                      image: AssetImage('assets/images/man.jpg'),
                                      fit: BoxFit.cover
                                  )
                              ),
                            ),
                          ],
                        ),
                      ),

                      Container(
                          margin: EdgeInsets.only(top: deviceHeight * .03),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Container(
                                  height: deviceHeight / 12 - 18,
                                  width: deviceWidth / 4,
                                  decoration: BoxDecoration(
                                      color: Colors.redAccent,
                                      borderRadius: BorderRadius.circular(5)
                                  ),
                                  child: Center(
                                    child: Text('Refuser', style: TextStyle(
                                        color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16
                                    ),),
                                  )
                              ),
                              SizedBox(width: 10,),
                              Container(
                                height: deviceHeight / 12 - 18,
                                width: deviceWidth / 4,
                                decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(5)
                                ),
                                child: Center(
                                  child: Text('Accepter', style: TextStyle(
                                      color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16
                                  ),),
                                ),
                              )
                            ],
                          )
                      ),
                      Separator(),

                      Stack(
                        children: <Widget>[
                          Container(
                              height: deviceHeight / 1.74,
                              //color: Colors.orange,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    padding: EdgeInsets.all(8),
                                    height: deviceHeight / 7,
                                    width: deviceWidth / 1.4,
                                    decoration: BoxDecoration(
                                        color: accanceColor,
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                    child: Column(
                                      children: <Widget>[
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Text('Moi', style: TextStyle(
                                                color: Colors.white, fontFamily: 'Barlow', fontSize: 15, fontWeight: FontWeight.bold
                                            ),),
                                            Text('12:34', style: TextStyle(
                                                color: Colors.white, fontFamily: 'Barlow', fontSize: 15, fontWeight: FontWeight.bold
                                            ),)
                                          ],
                                        ),
                                        SizedBox(height: 5,),
                                        Text("je m'appelle mademoiselle Grace Esther N'goran . j'habite yopougon millionaire", style: TextStyle(
                                            color: Colors.white, fontFamily: 'Barlow', fontSize: 15
                                        ),),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    //alignment: Alignment.topRight,
                                    padding: EdgeInsets.all(8),
                                    margin: EdgeInsets.only(top: 15, left: deviceWidth * .3),
                                    height: deviceHeight / 9,
                                    width: deviceWidth / 1.4,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                    child: Column(
                                      children: <Widget>[
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Text('Moi', style: TextStyle(
                                                color: Colors.black, fontFamily: 'Barlow', fontSize: 15, fontWeight: FontWeight.bold
                                            ),),
                                            Text('13:00', style: TextStyle(
                                                color: Colors.black, fontFamily: 'Barlow', fontSize: 15, fontWeight: FontWeight.bold
                                            ),)
                                          ],
                                        ),
                                        SizedBox(height: 5,),
                                        Text("salut miss moi cest monsieur Patrick Dagouaga Enchanté", style: TextStyle(
                                            color: Colors.black, fontFamily: 'Barlow', fontSize: 15
                                        ),),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(8),
                                    margin: EdgeInsets.only(top: 15),
                                    height: deviceHeight / 7,
                                    width: deviceWidth / 1.4,
                                    decoration: BoxDecoration(
                                        color: accanceColor,
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                    child: Column(
                                      children: <Widget>[
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Text('Moi', style: TextStyle(
                                                color: Colors.white, fontFamily: 'Barlow', fontSize: 15, fontWeight: FontWeight.bold
                                            ),),
                                            Text('13:28', style: TextStyle(
                                                color: Colors.white, fontFamily: 'Barlow', fontSize: 15, fontWeight: FontWeight.bold
                                            ),)
                                          ],
                                        ),
                                        SizedBox(height: 5,),
                                        Text("Enchanté aussi . j'ai appris que vous ètes un bon dev hybride de l'ecole NaN. Comment ça se fait?", style: TextStyle(
                                            color: Colors.white, fontFamily: 'Barlow', fontSize: 15
                                        ),),
                                      ],
                                    ),
                                  ),
                                ],
                              )
                          ),

                          Positioned(
                            //bottom: 5,
                            child:   Container(
                              //color: Colors.red,
                             // margin: EdgeInsets.all(5.0),
                              margin: EdgeInsets.only(top: deviceHeight * .6),
                              height: 70,
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      height: 70,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(20.0),
                                        boxShadow: [
                                          BoxShadow(
                                              offset: Offset(0, 3),
                                              blurRadius: 5,
                                              color: Colors.grey)
                                        ],
                                      ),
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: TextField(
                                              decoration: InputDecoration(
                                                  prefixIcon: Icon(Icons.message),
                                                  hintText: "Type Something...",
                                                  border: InputBorder.none),
                                            ),
                                          ),
                                          IconButton(
                                            icon: Icon(Icons.attach_file),
                                            onPressed: () {},
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 15),
                                  Container(
                                    padding: const EdgeInsets.all(15.0),
                                    decoration: BoxDecoration(
                                        color: accanceColor, shape: BoxShape.circle),
                                    child: InkWell(
                                      child: Icon(
                                        Icons.send,
                                        color: Colors.white,
                                      ),
                                      onLongPress: () {
                                        setState(() {
                                          // _showBottom = true;
                                        });
                                      },
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),

                    ],
                  ),
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
