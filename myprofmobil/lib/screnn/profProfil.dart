import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myprofmobil/screnn/contactPage.dart';
import '../outils/myStyle.dart';

class profProfil extends StatelessWidget {
  static const routeName = "profProfil";

  @override
  Widget build(BuildContext context) {
    AppBar myAppBar =   AppBar(
    backgroundColor: Color.fromRGBO(133, 136, 241, 1),
    leading: IconButton(
    icon: Icon(Icons.arrow_back, color: Colors.white,),
    onPressed: () {
    Navigator.pop(context);
    },
    ),
    title: Text('MyProfs'),
    centerTitle: true,
    elevation: 0,
    );

    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    print("Device Height ${deviceHeight}");
    print("AppBar  Height ${myAppBar.preferredSize.height}");
    return Scaffold(
      backgroundColor: bgColor,
      appBar: myAppBar,
      //Main container
      body: Container(
        height: deviceHeight - myAppBar.preferredSize.height,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              SizedBox(height: 20,),
              Container(
                height: deviceHeight - 3 * myAppBar.preferredSize.height,
                //height: 550,

                // List insade the contaner
                child: SingleChildScrollView(
                  //Column of all Elements scrolable
                  child: Column(
                    children: [
                      //Image and name section
                      Container(
                        height: deviceHeight * .6,
                        //height: 600,
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 80),
                              child: Row(
                                children: <Widget>[
                                  Text(
                                    "Esther Flutter ",
                                    style: TextStyle(
                                        color: textBoldColor,
                                        fontWeight: FontWeight.w800,
                                        fontSize: 20),
                                  ),
                                  SizedBox(width: 10,),
                                  Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.favorite_border,
                                        color: textBoldColor,
                                      ),
                                      Icon(
                                        Icons.share,
                                        color: textBoldColor,
                                      )
                                    ],),
                                ],
                              ),
                            ),
                            Center(
                              child: Container(
                                margin: EdgeInsets.only(top: 10),
                                height: 100,
                                width: 100,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(150),
                                    image: DecorationImage(
                                        image:
                                        AssetImage("assets/images/fille.jpg"),
                                        fit: BoxFit.fitHeight)),
                              ),
                            ),
                            SizedBox(height: 10,),
                            SizedBox(height: 5,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.star,
                                  color: accanceColor,
                                ),
                                Icon(
                                  Icons.star,
                                  color: accanceColor,
                                ),
                                Icon(
                                  Icons.star,
                                  color: accanceColor,
                                ),
                                Icon(
                                  Icons.star_half,
                                  color: accanceColor,
                                ),
                                Text(
                                  "(10 avis)",
                                  style: TextStyle(color: accanceColor),
                                ),
                              ],
                            ),
                            Divider(
                              color: textBoldColor,
                            ),
                            //Last Comment section
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        CircleAvatar(
                                          child: Text("P"),
                                          backgroundColor: accanceColor,
                                        ),
                                        Text(
                                          "Patrick",
                                          style: TextStyle(color: textBoldColor),
                                        )
                                      ],
                                    ),
                                    width: deviceWidth * .15,
                                  ),
                                  Container(
                                      width: 220,
                                      child: Text(
                                        "« Parfait ! Je n'ai pris que peu de cours avec Louloua mais je peux sans crainte dire que c'est une super prof, très pédagogue et patiente. Allez-y les yeux fermés ! »",
                                        style: TextStyle(color: textBoldColor),
                                      ))
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      //Diplome et temps de reponse
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: 90,
                            width: deviceWidth * .45,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.green),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Center(
                                  child: CircleAvatar(
                                    child: Icon(
                                      Icons.done,
                                      size: 35,
                                      color: themeColor,
                                    ),
                                    backgroundColor: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Diplome verifié ",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 10),
                                )
                              ],
                            ),
                          ),
                          Container(
                            height: 90,
                            width: deviceWidth * .45,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: accanceColor),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "4h",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      CircleAvatar(
                                        child: Icon(
                                          Icons.timeline,
                                          size: 35,
                                          color: themeColor,
                                        ),
                                        backgroundColor: Colors.white,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "temps de reponse  ",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 10),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                color: Colors.white.withOpacity(.3),
                height: myAppBar.preferredSize.height + 15,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    RichText(
                      text: TextSpan(
                        text: '2500 fr',
                        style: TextStyle(color: textBoldColor, fontSize: 25),
                        children: <TextSpan>[
                          TextSpan(
                              text: '/h',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              )),
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        color: themeColor,
                      ),
                      child: FlatButton.icon(
                          onPressed: () {
                            Navigator.pushNamed(context, ContactPage.routeName);
                          },
                          icon: Icon(
                            Icons.directions_run,
                            color: Colors.white,
                          ),
                          label: Text(
                            "Commencé",
                            style: TextStyle(color: Colors.white),
                          )),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
