import 'package:flutter/material.dart';
import 'package:myprofmobil/outils/myStyle.dart';
import 'package:myprofmobil/screnn/dashboard.dart';

import 'dash_user.dart';
import 'home_screen.dart';

//PAGE CONFIRMATIONS D'UNE DEMANDE DE COURS
class ContactPage extends StatefulWidget {
  static const routeName = "contactpage";

  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  bool isSelected = false;
  bool modPresentiel = true;
  bool byOM = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: themeColor,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text('MyProfs', style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22, fontFamily: 'BAARS'
          )),
          centerTitle: true,
          elevation: 0,
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: fondcolor,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      //color: Colors.teal,
                      borderRadius: BorderRadius.circular(100),
                      image: DecorationImage(
                          image: AssetImage('assets/images/man.jpg'),
                          fit: BoxFit.cover)),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Center(
                    child: Text(
                      "Contactez Henry pour votre premier cours",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontFamily: 'BAARS',
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  margin: EdgeInsets.only(right: 170),
                  child: Text(
                    "Votre demande",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 22,
                        fontFamily: 'BAARS',
                        fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                    padding: EdgeInsets.only(left: 12),
                    margin: EdgeInsets.only(left: 15),
                    height: 150,
                    width: MediaQuery.of(context).size.width / 1.1,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(10),
                      //border: Border.all(color: Colors.black54, width: 2),
                    ),
                    child: TextField(
                      //keyboardType: TextInputType.multiline,
                      maxLines: null,
                      decoration: InputDecoration(
                        hintText: 'Entrez votre message...',
                        hintStyle:
                            TextStyle(color: Colors.black54, fontSize: 18),
                        border: InputBorder.none,
                        icon: Icon(Icons.mail,
                            size: 18, color: Color.fromRGBO(17, 122, 139, 1)),
                      ),
                    )),
                SizedBox(
                  height: 30,
                ),
                Container(
                  margin: EdgeInsets.only(right: 170),
                  child: Text(
                    "Format du cours",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 22,
                        fontFamily: 'BAARS',
                        fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        setState(() {
                          modPresentiel = true;
                        });
                      },
                      child: Card(
                        elevation: modPresentiel ? 15 : 0,
                        color: modPresentiel ? Colors.green : bgColor,
                        child: Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width / 2.5,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15)),
                          // color: themeColor,
                          child: Center(
                            child: Text(
                              'En Presentiel',
                              style: TextStyle(
                                  color:
                                      modPresentiel ? Colors.white : Colors.grey,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          modPresentiel = !modPresentiel;
                        });
                      },
                      child: Card(
                        elevation: modPresentiel ? 0 : 15,
                        color: modPresentiel ? bgColor : Colors.green,
                        child: Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width / 2.5,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15)),
                          // color: themeColor,
                          child: Center(
                            child: Text(
                              'Par WebCam ',
                              style: TextStyle(
                                  color:
                                      modPresentiel ? Colors.grey : Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  margin: EdgeInsets.only(right: 50),
                  child: Text(
                    "Informations supplémentaires",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 22,
                        fontFamily: 'BAARS',
                        fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: Text(
                    "Elles ne seront communiquées qu'aux professeurs que vous avez sélectionnés",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.only(right: 200),
                  child: Text(
                    "Ville et Quartier",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 18,
                        fontFamily: 'BAARS',
                        fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                    padding: EdgeInsets.only(left: 12),
                    margin: EdgeInsets.only(left: 15),
                    height: 50,
                    width: MediaQuery.of(context).size.width / 1.1,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(10),
                      //border: Border.all(color: Colors.black54, width: 2),
                    ),
                    child: TextField(
                      //keyboardType: TextInputType.multiline,
                      maxLines: null,
                      decoration: InputDecoration(
                        hintText: 'Entrez votre message...',
                        hintStyle:
                            TextStyle(color: Colors.black54, fontSize: 15),
                        border: InputBorder.none,
                        icon: Icon(Icons.location_on,
                            size: 18, color: Color.fromRGBO(17, 122, 139, 1)),
                      ),
                    )),
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.only(right: 250),
                  child: Text(
                    "Contacts",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 18,
                        fontFamily: 'BAARS',
                        fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                    padding: EdgeInsets.only(left: 12),
                    margin: EdgeInsets.only(left: 15),
                    height: 50,
                    width: MediaQuery.of(context).size.width / 1.1,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(10),
                      //border: Border.all(color: Colors.black54, width: 2),
                    ),
                    child: TextField(
                      //keyboardType: TextInputType.multiline,
                      maxLines: null,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: 'Numéros..',
                        hintStyle:
                            TextStyle(color: Colors.black54, fontSize: 15),
                        border: InputBorder.none,
                        icon: Icon(Icons.call,
                            size: 18, color: Color.fromRGBO(17, 122, 139, 1)),
                      ),
                    )),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    child: Container(
                      width: 220,
                      height: 40.0,
                      decoration: BoxDecoration(
                        border: Border.all(color: themeColor, width: 2),
                        borderRadius: BorderRadius.circular(20)
                        /*gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              Colors.deepPurple,
                              Color.fromRGBO(133, 136, 241, 1)
                            ]),*/
                      ),
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, UserDash.routeName);
                          },
                          child: Center(
                            child: Text(
                              'Envoyer la demande',
                              style: TextStyle(
                                  color: themeColor,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ));
  }
}
