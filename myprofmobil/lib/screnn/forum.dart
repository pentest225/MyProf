import 'package:flutter/material.dart';
import 'package:myprofmobil/outils/myStyle.dart';

import 'forum_question.dart';
import 'forum_reponses.dart';

class ForumPage extends StatefulWidget {
  @override
  _ForumPageState createState() => _ForumPageState();
}

class _ForumPageState extends State<ForumPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Forum', style: TextStyle(
            fontSize: 25, fontWeight: FontWeight.bold, fontFamily: 'BAARS', color: Colors.black
        ),),
        centerTitle: true,
        elevation: 0,
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back, color: Colors.black,)
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: fondcolor,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 10,),
                Center(
                  child: Text("Forum d'assistance des cours", style: TextStyle(
                    fontSize: 20, fontWeight: FontWeight.bold
                  ),),
                ),
                SizedBox(height: 20,),
                Container(
                  height: MediaQuery.of(context).size.height/16,
                  width: MediaQuery.of(context).size.width/1.5,
                  decoration: BoxDecoration(
                      color: themeColor,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: FlatButton.icon(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ForumQuestion()));
                      },
                      icon: Icon(Icons.question_answer, color: Colors.white,),
                      label: Text(
                        'Poster vos questions',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18, fontFamily: 'BAARS'),
                      )),),
                SizedBox(height: 30,),
              Container(
                child: Wrap(
                  children: <Widget>[
                    Card(
                      child: Container(
                        margin: EdgeInsets.only(left: 5, right: 5,),
                        padding: EdgeInsets.only(top: 10, ),
                        height: MediaQuery.of(context).size.height/4.5,
                        width: MediaQuery.of(context).size.width/1,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5)
                        ),
                        child: Row(
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(left: 10),
                                  height: 70,
                                  width: 70,
                                  decoration: BoxDecoration(
                                      color: themeColor,
                                      shape: BoxShape.circle,
                                      //borderRadius: BorderRadius.circular(100),
                                      image: DecorationImage(
                                          image: AssetImage('assets/images/man.jpg'),
                                          fit: BoxFit.cover
                                      )
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text('Brice Séraphin', style: TextStyle(
                                    color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold, fontFamily: 'BAARS'
                                ),),
                              ],
                            ),
                            SizedBox(width: 15,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text('Arrondir un Container en ...', style: TextStyle(
                                    fontWeight: FontWeight.bold, fontFamily: 'BAARS', fontSize: 16
                                ),),
                                SizedBox(height: 15,),
                                Container(
                                  width: 200,
                                  child: Text('Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium repellat...', style: TextStyle(
                                      color: Colors.grey, fontSize: 14, fontWeight: FontWeight.w300, fontFamily: 'BAARS'
                                  ),),
                                ),
                                SizedBox(height: 15,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    InkWell(
                                      onTap: () {
                                        Navigator.push(context, MaterialPageRoute(builder: (context) => ForumReponses()));
                                      },
                                      child: Row(
                                        children: <Widget>[
                                          Text('8 réponses', style: TextStyle(
                                              color: accanceColor, fontWeight: FontWeight.bold, fontSize: 14
                                          ),),
                                          Icon(Icons.arrow_forward_ios, size: 12, color: accanceColor,)
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: 40,),
                                    Text('17 juillet 2020', style: TextStyle(
                                        color: Colors.grey, fontSize: 14, fontWeight: FontWeight.bold
                                    ),)
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Card(
                      child: Container(
                        margin: EdgeInsets.only(left: 5, right: 5,),
                        padding: EdgeInsets.only(top: 10, ),
                        height: MediaQuery.of(context).size.height/4.5,
                        width: MediaQuery.of(context).size.width/1,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5)
                        ),
                        child: Row(
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(left: 10),
                                  height: 70,
                                  width: 70,
                                  decoration: BoxDecoration(
                                      color: themeColor,
                                      shape: BoxShape.circle,
                                      //borderRadius: BorderRadius.circular(100),
                                      image: DecorationImage(
                                          image: AssetImage('assets/images/man.jpg'),
                                          fit: BoxFit.cover
                                      )
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text('Brice Séraphin', style: TextStyle(
                                    color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold, fontFamily: 'BAARS'
                                ),),
                              ],
                            ),
                            SizedBox(width: 15,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text('Arrondir un Container en ...', style: TextStyle(
                                    fontWeight: FontWeight.bold, fontFamily: 'BAARS', fontSize: 16
                                ),),
                                SizedBox(height: 15,),
                                Container(
                                  width: 200,
                                  child: Text('Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium repellat...', style: TextStyle(
                                      color: Colors.grey, fontSize: 14, fontWeight: FontWeight.w300, fontFamily: 'BAARS'
                                  ),),
                                ),
                                SizedBox(height: 15,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    InkWell(
                                      onTap: () {
                                        Navigator.push(context, MaterialPageRoute(builder: (context) => ForumReponses()));
                                      },
                                      child: Row(
                                        children: <Widget>[
                                          Text('8 réponses', style: TextStyle(
                                              color: accanceColor, fontWeight: FontWeight.bold, fontSize: 14
                                          ),),
                                          Icon(Icons.arrow_forward_ios, size: 12, color: accanceColor,)
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: 40,),
                                    Text('17 juillet 2020', style: TextStyle(
                                        color: Colors.grey, fontSize: 14, fontWeight: FontWeight.bold
                                    ),)
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Card(
                      child: Container(
                        margin: EdgeInsets.only(left: 5, right: 5,),
                        padding: EdgeInsets.only(top: 10, ),
                        height: MediaQuery.of(context).size.height/4.5,
                        width: MediaQuery.of(context).size.width/1,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5)
                        ),
                        child: Row(
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(left: 10),
                                  height: 70,
                                  width: 70,
                                  decoration: BoxDecoration(
                                      color: themeColor,
                                      shape: BoxShape.circle,
                                      //borderRadius: BorderRadius.circular(100),
                                      image: DecorationImage(
                                          image: AssetImage('assets/images/man.jpg'),
                                          fit: BoxFit.cover
                                      )
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text('Brice Séraphin', style: TextStyle(
                                    color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold, fontFamily: 'BAARS'
                                ),),
                              ],
                            ),
                            SizedBox(width: 15,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text('Arrondir un Container en ...', style: TextStyle(
                                    fontWeight: FontWeight.bold, fontFamily: 'BAARS', fontSize: 16
                                ),),
                                SizedBox(height: 15,),
                                Container(
                                  width: 200,
                                  child: Text('Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium repellat...', style: TextStyle(
                                      color: Colors.grey, fontSize: 14, fontWeight: FontWeight.w300, fontFamily: 'BAARS'
                                  ),),
                                ),
                                SizedBox(height: 15,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    InkWell(
                                      onTap: () {
                                        Navigator.push(context, MaterialPageRoute(builder: (context) => ForumReponses()));
                                      },
                                      child: Row(
                                        children: <Widget>[
                                          Text('8 réponses', style: TextStyle(
                                              color: accanceColor, fontWeight: FontWeight.bold, fontSize: 14
                                          ),),
                                          Icon(Icons.arrow_forward_ios, size: 12, color: accanceColor,)
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: 40,),
                                    Text('17 juillet 2020', style: TextStyle(
                                        color: Colors.grey, fontSize: 14, fontWeight: FontWeight.bold
                                    ),)
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Card(
                      child: Container(
                        margin: EdgeInsets.only(left: 5, right: 5,),
                        padding: EdgeInsets.only(top: 10, ),
                        height: MediaQuery.of(context).size.height/4.5,
                        width: MediaQuery.of(context).size.width/1,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5)
                        ),
                        child: Row(
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(left: 10),
                                  height: 70,
                                  width: 70,
                                  decoration: BoxDecoration(
                                      color: themeColor,
                                      shape: BoxShape.circle,
                                      //borderRadius: BorderRadius.circular(100),
                                      image: DecorationImage(
                                          image: AssetImage('assets/images/man.jpg'),
                                          fit: BoxFit.cover
                                      )
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text('Brice Séraphin', style: TextStyle(
                                    color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold, fontFamily: 'BAARS'
                                ),),
                              ],
                            ),
                            SizedBox(width: 15,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text('Arrondir un Container en ...', style: TextStyle(
                                    fontWeight: FontWeight.bold, fontFamily: 'BAARS', fontSize: 16
                                ),),
                                SizedBox(height: 15,),
                                Container(
                                  width: 200,
                                  child: Text('Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium repellat...', style: TextStyle(
                                      color: Colors.grey, fontSize: 14, fontWeight: FontWeight.w300, fontFamily: 'BAARS'
                                  ),),
                                ),
                                SizedBox(height: 15,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    InkWell(
                                      onTap: () {
                                        Navigator.push(context, MaterialPageRoute(builder: (context) => ForumReponses()));
                                      },
                                      child: Row(
                                        children: <Widget>[
                                          Text('8 réponses', style: TextStyle(
                                              color: accanceColor, fontWeight: FontWeight.bold, fontSize: 14
                                          ),),
                                          Icon(Icons.arrow_forward_ios, size: 12, color: accanceColor,)
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: 40,),
                                    Text('17 juillet 2020', style: TextStyle(
                                        color: Colors.grey, fontSize: 14, fontWeight: FontWeight.bold
                                    ),)
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Card(
                      child: Container(
                        margin: EdgeInsets.only(left: 5, right: 5,),
                        padding: EdgeInsets.only(top: 10, ),
                        height: MediaQuery.of(context).size.height/4.5,
                        width: MediaQuery.of(context).size.width/1,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5)
                        ),
                        child: Row(
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(left: 10),
                                  height: 70,
                                  width: 70,
                                  decoration: BoxDecoration(
                                      color: themeColor,
                                      shape: BoxShape.circle,
                                      //borderRadius: BorderRadius.circular(100),
                                      image: DecorationImage(
                                          image: AssetImage('assets/images/man.jpg'),
                                          fit: BoxFit.cover
                                      )
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text('Brice Séraphin', style: TextStyle(
                                    color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold, fontFamily: 'BAARS'
                                ),),
                              ],
                            ),
                            SizedBox(width: 15,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text('Arrondir un Container en ...', style: TextStyle(
                                    fontWeight: FontWeight.bold, fontFamily: 'BAARS', fontSize: 16
                                ),),
                                SizedBox(height: 15,),
                                Container(
                                  width: 200,
                                  child: Text('Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium repellat...', style: TextStyle(
                                      color: Colors.grey, fontSize: 14, fontWeight: FontWeight.w300, fontFamily: 'BAARS'
                                  ),),
                                ),
                                SizedBox(height: 15,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    InkWell(
                                      onTap: () {
                                        Navigator.push(context, MaterialPageRoute(builder: (context) => ForumReponses()));
                                      },
                                      child: Row(
                                        children: <Widget>[
                                          Text('8 réponses', style: TextStyle(
                                              color: accanceColor, fontWeight: FontWeight.bold, fontSize: 14
                                          ),),
                                          Icon(Icons.arrow_forward_ios, size: 12, color: accanceColor,)
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: 40,),
                                    Text('17 juillet 2020', style: TextStyle(
                                        color: Colors.grey, fontSize: 14, fontWeight: FontWeight.bold
                                    ),)
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
                SizedBox(height: 20,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
