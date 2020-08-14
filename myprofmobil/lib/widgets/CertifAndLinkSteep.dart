import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';
import 'package:myprofmobil/outils/myStyle.dart';

class CertifStepp extends StatefulWidget {
  @override
  _CertifSteppState createState() => _CertifSteppState();
}

class _CertifSteppState extends State<CertifStepp> {
  @override
  void initState() {
    super.initState();
  }

  File _image;
  bool _loadImage = false;
  final picker = ImagePicker();
  Future getImageFromFils() async {
    try {
      setState(() {
        _loadImage = true;
      });
      final pickedFile = await picker.getImage(source: ImageSource.gallery);
      _image = File(pickedFile.path);
      print("Image From Galerie ${_image}");
      setState(() {
        _loadImage = false;
      });
    } catch (error) {
      print("Error to get Image from fils ${error.toString()}");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Confirmé votre Profil ",
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 25,
                        fontFamily: 'BAARS',
                        fontWeight: FontWeight.w700),
                  ),
                  Text(
                    "( Optionel )",
                    
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      "Pour confirmer vos compétences nous vous suggérons d'ajouter des éléments permettant de le faire .vous pouvez ajouter un certificat votre diplôme, ou votre curiculome vita ",
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                    child: _loadImage
                        ? Text(
                            "Loading ...",
                            style: TextStyle(color: themeColor),
                          )
                        : Text("... ",),
                  ),
                  Container(
                    child: Center(
                      child: Container(
                        height: MediaQuery.of(context).size.height / 18,
                        // width: MediaQuery.of(context).size.width / 25,
                        decoration: BoxDecoration(
                          color: accanceColor,
                        ),
                        child: FlatButton.icon(
                            onPressed: getImageFromFils,
                            icon: Icon(
                              Icons.file_upload,
                              color: Colors.white,
                            ),
                            label: Text(
                              'Uplaoder',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14),
                            )),
                      ),
                    ),
                  )
                ],
              ),
            ),
             ],
        ),
      ),
    );
  }
}
