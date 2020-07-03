import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../outils/myStyle.dart';


class profProfil extends StatelessWidget {



  static const routeName = "profProfil";

  @override
  Widget build(BuildContext context) {
    AppBar myAppBar = AppBar(
      title: Text("my Prof12",style: TextStyle(color: themeColor),),
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(icon: Icon(Icons.arrow_back_ios),color: themeColor,onPressed: (){
        Navigator.pop(context);
      },),
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              height: deviceHeight - 3*myAppBar.preferredSize.height,
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
                          // first row for name like and share
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                SizedBox(
                                  width: deviceWidth * .10,
                                  child: Container(color: Colors.red,),
                                ),
                                Text("Esther Flutter ",style: TextStyle(color: textBoldColor,fontWeight: FontWeight.w300,fontSize: 20),),
                                Icon(Icons.favorite_border,color: textBoldColor,),
                                Icon(Icons.share,color: textBoldColor,)
                              ],
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                          ),
                          // circle Image Section
                          Center(
                            child: Container(
                              margin:EdgeInsets.only(top: 10),
                              height:deviceHeight * .5 - 190 ,
                              width:deviceHeight * .5 - 190 ,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(150),
                                image: DecorationImage(
                                  image: AssetImage("assets/images/fille.jpg"),
                                  fit: BoxFit.fitHeight
                                )
                              ),
                            ),
                          ),
                          // Section first Name
                          Center(
                            child: Container(
                              margin: EdgeInsets.symmetric(vertical: 10),
                              width: deviceHeight * .5 - 190,
                              child: Column(
                                children: [
                                  Text("N'guessan",style: TextStyle(color: textBolderColor,fontSize: 25,fontWeight: FontWeight.bold),),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.star,color: accanceColor,),
                                      Icon(Icons.star,color: accanceColor,),
                                      Icon(Icons.star,color: accanceColor,),
                                      Icon(Icons.star_half,color: accanceColor,),
                                      Text("(10 avis)",style: TextStyle(color: accanceColor),)
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          Divider(color: textBoldColor,),
                          //Last Comment section
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      CircleAvatar(
                                        child: Text("P"),
                                        backgroundColor: accanceColor,
                                      ),
                                      Text("Patrick",style: TextStyle(color: textBoldColor),)
                                    ],
                                  ),
                                  width: deviceWidth * .15,
                                ),
                                Container(
                                  width:220,
                                    child: Text("« Parfait ! Je n'ai pris que peu de cours avec Louloua mais je peux sans crainte dire que c'est une super prof, très pédagogue et patiente. Allez-y les yeux fermés ! »",style: TextStyle(color: textBoldColor),))
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
                          width: deviceWidth *.45,
                          decoration:BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.green
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Center(
                                child: CircleAvatar(child: Icon(Icons.done,size: 35,color: themeColor,),backgroundColor: Colors.white,),
                              ),
                              SizedBox(height:5,),
                              Text("Diplome verifié ",style: TextStyle(color: Colors.white,fontSize: 10),)
                            ],
                          ),
                        ),
                        Container(
                          height: 90,
                          width: deviceWidth *.45,
                          decoration:BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: accanceColor
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("4h",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                                    CircleAvatar(child: Icon(Icons.timeline,size: 35,color: themeColor,),backgroundColor: Colors.white,),
                                  ],
                                ),
                              ),
                              SizedBox(height:5,),
                              Text("temps de reponse  ",style: TextStyle(color: Colors.white,fontSize: 10),)
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
                      style: TextStyle(color: textBoldColor,fontSize: 25),
                      children: <TextSpan>[
                        TextSpan(text: '/h', style: TextStyle(fontWeight: FontWeight.bold,)),

                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      color: themeColor,

                    ),
                    child: FlatButton.icon(onPressed: (){}, icon: Icon(Icons.directions_run,color: Colors.white,), label: Text("Commencé",style: TextStyle(color: Colors.white),)),
                  )
                ],
              ),

            )
          ],
        ),
      ),
    );
  }
}
