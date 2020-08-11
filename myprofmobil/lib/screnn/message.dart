import 'package:flutter/material.dart';
import 'package:myprofmobil/outils/myStyle.dart';
import 'package:myprofmobil/screnn/message_detail.dart';

class MessagePage extends StatefulWidget {

  static const routeName = "messagepage";

  @override
  _MessagePageState createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {

    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text('Messages', style: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 25, fontFamily: 'BAARS', color: Colors.black
        ),),
        backgroundColor: Colors.white,
        centerTitle: true,
        automaticallyImplyLeading: false,
        elevation: 0,
        leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black,),
            onPressed: () {
              Navigator.pop(context);
            }
        ),
      ),
      body: SafeArea(
        child: Container(
          height: deviceHeight,
          width: deviceWidth,
          color: Colors.white,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[

                  Container(
                    margin: EdgeInsets.only(top: deviceHeight * .04),
                    height: deviceHeight / 12- 12,
                    width: deviceWidth ,
                    color: Colors.grey.withOpacity(0.2),
                    child: TextField(
                      cursorColor: Colors.grey,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Recherche',
                        prefixIcon: Icon(Icons.search, size: 22, color: Colors.black,)
                      ),
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(top: deviceHeight * .04),
                    child: Text('All messages', style: TextStyle(
                      fontFamily: 'Barlow', fontSize: 20, fontWeight: FontWeight.w400, color: Colors.black
                    ),),
                  ),

                  Container(
                    margin: EdgeInsets.only(top: 10),
                    height: deviceHeight / 1.4,
                    //color: Colors.orangeAccent,
                    child: ListView.builder(
                      itemCount: 8,
                        itemBuilder: (context, i) {
                          return  InkWell(
                            onTap: () {
                              Navigator.of(context).pushNamed(MessageDetail.routeName);
                            },
                            child: Container(
                              margin: EdgeInsets.only(top: deviceHeight * .02),
                              padding: EdgeInsets.only(left: 10),
                              height: deviceHeight / 8,
                              width: deviceWidth,
                              color: accanceColor.withOpacity(0.06),
                              child: Row(
                                //mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    //margin: ,
                                    height: deviceHeight * .08,
                                    width: deviceWidth / 6,
                                    decoration: BoxDecoration(
                                      //color: Colors.red,
                                        borderRadius: BorderRadius.circular(100),
                                        image: DecorationImage(
                                            image: AssetImage('assets/images/man.jpg'),
                                            fit: BoxFit.cover
                                        )
                                    ),
                                  ),
                                  SizedBox(width: 10,),
                                  Container(
                                    height: deviceHeight * .3,
                                    width: deviceWidth / 1.9,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        Text('Olivia Carr', style: TextStyle(
                                            fontWeight: FontWeight.bold, fontSize: 16, fontFamily: 'Barlow'
                                        ),),
                                        SizedBox(height: 5,),
                                        Text('Good idea... but i think this is a very very bad idea', style: TextStyle(
                                            fontFamily: 'Barlow', fontWeight: FontWeight.w500, color: Colors.black54
                                        ),)
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: deviceWidth * .08,),
                                  Container(
                                    height: deviceHeight * .03,
                                    width: deviceWidth / 9 - 15,
                                    decoration: BoxDecoration(
                                        color: themeColor,
                                        shape: BoxShape.circle
                                    ),
                                    child: Center(
                                      child: Text('2', style: TextStyle(
                                          color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold
                                      ),),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        }
                    ),
                  ),


                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
