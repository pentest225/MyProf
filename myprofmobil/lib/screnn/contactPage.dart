import 'package:flutter/material.dart';
import 'package:myprofmobil/outils/myStyle.dart';
import 'package:myprofmobil/screnn/dashboard.dart';

import 'home_screen.dart';

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
          title: Text('MyProfs'),
          centerTitle: true,
          elevation: 0,
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
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
                          image: AssetImage('assets/images/books.jpg'),
                          fit: BoxFit.cover)),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Center(
                    child: Text(
                      "Contactez Guillaume pour votre premier cours",
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
                        color: Color.fromRGBO(17, 122, 139, 1),
                        fontSize: 22,
                        fontFamily: 'BAARS',
                        fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(
                  height: 5,
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
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.only(right: 170),
                  child: Text(
                    "Format du cours",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromRGBO(17, 122, 139, 1),
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
                                      modPresentiel ? Colors.white : themeColor,
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
                                      modPresentiel ? themeColor : Colors.white,
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
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.only(right: 50),
                  child: Text(
                    "Informations supplémentaires",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromRGBO(17, 122, 139, 1),
                        fontSize: 22,
                        fontFamily: 'BAARS',
                        fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(
                  height: 5,
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
                  height: 15,
                ),
                Container(
                  margin: EdgeInsets.only(right: 200),
                  child: Text(
                    "Ville et Quartier",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromRGBO(17, 122, 139, 1),
                        fontSize: 18,
                        fontFamily: 'BAARS',
                        fontWeight: FontWeight.w400),
                  ),
                ),
                SizedBox(
                  height: 5,
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
                  height: 15,
                ),
                Container(
                  margin: EdgeInsets.only(right: 250),
                  child: Text(
                    "Contacts",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromRGBO(17, 122, 139, 1),
                        fontSize: 18,
                        fontFamily: 'BAARS',
                        fontWeight: FontWeight.w400),
                  ),
                ),
                SizedBox(
                  height: 5,
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
                  height: 15,
                ),
                Container(
                  margin: EdgeInsets.only(right: 170),
                  child: Text(
                    "Moyen de paiement",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromRGBO(17, 122, 139, 1),
                        fontSize: 18,
                        fontFamily: 'BAARS',
                        fontWeight: FontWeight.w400),
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
                          byOM = false;
                        });
                      },
                      child: Card(
                        elevation: byOM ? 0 : 15,
                        color: byOM ? bgColor : Colors.green,
                        child: Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width / 2.5,
                          
                          child: Material(
                            color: Colors.transparent,
                            child: Center(
                              child: Text(
                                'Moov money',
                                style: TextStyle(
                                    color: byOM ? themeColor : Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
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
                          byOM = true;
                        });
                      },
                      child: Card(
                        elevation: byOM?15:0,
                        color:byOM?Colors.green:bgColor,
                        child: Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width / 2.5,
                         
                          child: Center(
                            child: Text(
                              'Orange money',
                              style: TextStyle(
                                  color:byOM ? Colors.white:themeColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  margin: EdgeInsets.only(right: 220),
                  child: Text(
                    "Carte bancaire",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromRGBO(17, 122, 139, 1),
                        fontSize: 18,
                        fontFamily: 'BAARS',
                        fontWeight: FontWeight.w400),
                  ),
                ),
                SizedBox(
                  height: 5,
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
                        icon: Icon(Icons.payment,
                            size: 18, color: Color.fromRGBO(17, 122, 139, 1)),
                      ),
                    )),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    child: Container(
                      width: 220,
                      height: 40.0,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              Colors.deepPurple,
                              Color.fromRGBO(133, 136, 241, 1)
                            ]),
                      ),
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, Dashboard.routeName);
                          },
                          child: Center(
                            child: Text(
                              'Envoyer la demande',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
