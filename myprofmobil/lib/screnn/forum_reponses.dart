import 'package:flutter/material.dart';
import 'package:myprofmobil/outils/myStyle.dart';

class ForumReponses extends StatefulWidget {
  @override
  _ForumReponsesState createState() => _ForumReponsesState();
}

class _ForumReponsesState extends State<ForumReponses> {
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
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 20,),
               Row(
                 children: <Widget>[
                   Container(
                     height: 80,
                     width: 80,
                     decoration: BoxDecoration(
                       color: themeColor,
                         shape: BoxShape.circle,
                         image: DecorationImage(
                             image: AssetImage('assets/images/man.jpg'),
                             fit: BoxFit.cover
                         )
                     ),
                   ),
                   SizedBox(width: 15,),
                   Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: <Widget>[
                       Text('Brice Séraphin', style: TextStyle(
                         color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20, fontFamily: 'BAARS'
                       ),),
                       SizedBox(height: 10,),
                       Text("il y'a 1 jour", style: TextStyle(
                         color: Colors.grey, fontWeight: FontWeight.bold
                       ),),
                       SizedBox(height: 10,),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: <Widget>[
                           Row(
                               children: <Widget>[
                                 Text('15 réponses', style: TextStyle(
                                     color: accanceColor, fontWeight: FontWeight.bold, fontSize: 14
                                 ),),
                                 Icon(Icons.arrow_forward_ios, size: 12, color: accanceColor,)
                               ]
                           ),
                           SizedBox(width: 50,),
                           Text('30 juillet 2020', style: TextStyle(
                               color: Colors.grey, fontSize: 14, fontWeight: FontWeight.bold
                           ),)
                         ],
                       )
                     ],
                   )
                 ],
               ),
                SizedBox(height: 20,),
                Text('Arrondir un container en flutter', style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 20
                ),),
                SizedBox(height: 10,),
                Text("bonjour, Lorem ipsum dolor sit amet consectetur adipisicing elit. Pariatur eius natus delectus optio adipisci voluptatem, laborum blanditiis, eveniet deserunt atque consequatur quia necessitatibus quaerat odit, possimus fugit nostrum rem. Iure.", style: TextStyle(
                  color: Colors.grey, fontWeight: FontWeight.w300, fontSize: 18, fontFamily: 'BAARS'
                ),),
                SizedBox(height: 30,),
               Container(
                 child: Wrap(
                   children: <Widget>[
                     Card(
                       child: Container(
                         padding: EdgeInsets.only(left: 10),
                         margin: EdgeInsets.only(left: 5, right: 5),
                         height: MediaQuery.of(context).size.height/2.2,
                         width: MediaQuery.of(context).size.width,
                         decoration: BoxDecoration(
                             color: Colors.white
                         ),
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: <Widget>[
                             SizedBox(height: 20,),
                             Row(
                               children: <Widget>[
                                 Container(
                                   height: 70,
                                   width: 70,
                                   decoration: BoxDecoration(
                                       color: themeColor,
                                       shape: BoxShape.circle,
                                       image: DecorationImage(
                                           image: AssetImage('assets/images/man.jpg'),
                                           fit: BoxFit.cover
                                       )
                                   ),
                                 ),
                                 SizedBox(width: 15,),
                                 Column(
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   children: <Widget>[
                                     Text('Guindo Chef Rebelle', style: TextStyle(
                                         color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20, fontFamily: 'BAARS'
                                     ),),
                                     SizedBox(height: 10,),
                                     Text("08 juillet 2020 à 15H50", style: TextStyle(
                                         color: Colors.grey, fontWeight: FontWeight.bold
                                     ),),
                                   ],
                                 )
                               ],
                             ),
                             SizedBox(height: 30,),
                             Text("bonjour, Lorem ipsum dolor sit amet consectetur adipisicing elit. Pariatur eius natus delectus optio adipisci voluptatem, laborum blanditiis, eveniet deserunt atque consequatur quia necessitatibus quaerat odit, possimus fugit nostrum rem. Iure.", style: TextStyle(
                                 color: Colors.grey, fontWeight: FontWeight.w300, fontSize: 18, fontFamily: 'BAARS'
                             ),),
                             SizedBox(height: 30,),
                             Row(
                               children: <Widget>[
                                 Icon(Icons.thumb_up, color: themeColor,),
                                 SizedBox(width: 5,),
                                 Text('3', style: TextStyle(
                                     fontWeight: FontWeight.bold, fontSize: 18
                                 ),)
                               ],
                             )
                           ],
                         ),
                       ),
                     ),
                     Card(
                       child: Container(
                         padding: EdgeInsets.only(left: 10),
                         margin: EdgeInsets.only(left: 5, right: 5),
                         height: MediaQuery.of(context).size.height/2.2,
                         width: MediaQuery.of(context).size.width,
                         decoration: BoxDecoration(
                             color: Colors.white
                         ),
                         child: Column(
                           children: <Widget>[
                             SizedBox(height: 20,),
                             Row(
                               children: <Widget>[
                                 Container(
                                   height: 70,
                                   width: 70,
                                   decoration: BoxDecoration(
                                       color: themeColor,
                                       shape: BoxShape.circle,
                                       image: DecorationImage(
                                           image: AssetImage('assets/images/man.jpg'),
                                           fit: BoxFit.cover
                                       )
                                   ),
                                 ),
                                 SizedBox(width: 15,),
                                 Column(
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   children: <Widget>[
                                     Text('Patrick la joie', style: TextStyle(
                                         color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20, fontFamily: 'BAARS'
                                     ),),
                                     SizedBox(height: 10,),
                                     Text("08 juillet 2020 à 15H50", style: TextStyle(
                                         color: Colors.grey, fontWeight: FontWeight.bold
                                     ),),
                                   ],
                                 )
                               ],
                             ),
                             SizedBox(height: 30,),
                             Text("bonjour, Lorem ipsum dolor sit amet consectetur adipisicing elit. Pariatur eius natus delectus optio adipisci voluptatem, laborum blanditiis, eveniet deserunt atque consequatur quia necessitatibus quaerat odit, possimus fugit nostrum rem. Iure.", style: TextStyle(
                                 color: Colors.grey, fontWeight: FontWeight.w300, fontSize: 18, fontFamily: 'BAARS'
                             ),),
                             SizedBox(height: 30,),
                             Row(
                               children: <Widget>[
                                 Icon(Icons.thumb_up, color: themeColor,),
                                 SizedBox(width: 5,),
                                 Text('1', style: TextStyle(
                                     fontWeight: FontWeight.bold, fontSize: 18
                                 ),)
                               ],
                             )
                           ],
                         ),
                       ),
                     ),
                     Card(
                       child: Container(
                         padding: EdgeInsets.only(left: 10),
                         margin: EdgeInsets.only(left: 5, right: 5),
                         height: MediaQuery.of(context).size.height/2.2,
                         width: MediaQuery.of(context).size.width,
                         decoration: BoxDecoration(
                             color: Colors.white
                         ),
                         child: Column(
                           children: <Widget>[
                             SizedBox(height: 20,),
                             Row(
                               children: <Widget>[
                                 Container(
                                   height: 70,
                                   width: 70,
                                   decoration: BoxDecoration(
                                       color: themeColor,
                                       shape: BoxShape.circle,
                                       image: DecorationImage(
                                           image: AssetImage('assets/images/man.jpg'),
                                           fit: BoxFit.cover
                                       )
                                   ),
                                 ),
                                 SizedBox(width: 15,),
                                 Column(
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   children: <Widget>[
                                     Text('Dev tout terrain', style: TextStyle(
                                         color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20, fontFamily: 'BAARS'
                                     ),),
                                     SizedBox(height: 10,),
                                     Text("08 juillet 2020 à 15H50", style: TextStyle(
                                         color: Colors.grey, fontWeight: FontWeight.bold
                                     ),),
                                   ],
                                 )
                               ],
                             ),
                             SizedBox(height: 30,),
                             Text("bonjour, Lorem ipsum dolor sit amet consectetur adipisicing elit. Pariatur eius natus delectus optio adipisci voluptatem, laborum blanditiis, eveniet deserunt atque consequatur quia necessitatibus quaerat odit, possimus fugit nostrum rem. Iure.", style: TextStyle(
                                 color: Colors.grey, fontWeight: FontWeight.w300, fontSize: 18, fontFamily: 'BAARS'
                             ),),
                             SizedBox(height: 30,),
                             Row(
                               children: <Widget>[
                                 Icon(Icons.thumb_up, color: themeColor,),
                                 SizedBox(width: 5,),
                                 Text('18', style: TextStyle(
                                     fontWeight: FontWeight.bold, fontSize: 18
                                 ),)
                               ],
                             )
                           ],
                         ),
                       ),
                     )
                   ],
                 ),
               ),
                SizedBox(height: 30,),
                Text('Votre Reponse', style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold
                ),),
                SizedBox(height: 30,),
                Container(
                  padding: EdgeInsets.only(left: 20),
                  margin: EdgeInsets.only(left: 10, right: 10),
                  height: MediaQuery.of(context).size.height/2,
                  width: MediaQuery.of(context).size.width/1,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    //border: Border.all(color: accanceColor, width: 1),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black87,
                          offset: Offset(0.0, 1.5),
                          blurRadius: 1.5
                      )
                    ]
                  ),
                  child: TextField(
                    cursorColor: Colors.grey,
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    decoration: InputDecoration(
                      hintText: 'Entrer votre reponse',
                      hintStyle: TextStyle(
                        fontSize: 18,
                      ),
                      border: InputBorder.none,

                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Text('Télécharger un fichier', style: TextStyle(
                    fontSize: 17, color: Colors.black87, fontWeight: FontWeight.bold
                  ),),
                ),
                SizedBox(height: 10,),
                InkWell(
                  onTap: () {

                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 10),
                    height: MediaQuery.of(context).size.height/16,
                    width: MediaQuery.of(context).size.width/2.8,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: themeColor, width: 1)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.file_upload, color: Colors.black54, size: 20,),
                        SizedBox(width: 3,),
                        Text('Fichier...', style: TextStyle(
                          color: Colors.black54, fontWeight: FontWeight.bold, fontFamily: 'BAARS', fontSize: 18
                        ),)
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 40,),
                Center(
                  child: InkWell(
                    onTap: () {
                      //Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilPage()));
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height/14,
                      width: MediaQuery.of(context).size.width/1.5,
                      decoration: BoxDecoration(
                          color: themeColor,
                          borderRadius: BorderRadius.circular(50)
                      ),
                      child: Center(
                          child: Text('Envoyer', style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18, fontFamily: 'BAARS'
                          ),)
                      ),
                    ),
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
