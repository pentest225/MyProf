import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:myprofmobil/outils/myStyle.dart';

class ProfilPhoto extends StatefulWidget {

  static const routeName = 'profilphoto';

  @override
  _ProfilPhotoState createState() => _ProfilPhotoState();
}

class _ProfilPhotoState extends State<ProfilPhoto> {

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
    return Scaffold(
        appBar: AppBar(
          backgroundColor: fondcolor,
          elevation: 0,
          automaticallyImplyLeading: false,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black,),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          centerTitle: true,
          title: Text(
            'Mon Compte',
            style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.bold,
                fontFamily: 'BAARS'),
          ),
        ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: fondcolor,
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Photo de profil', style: TextStyle(
                        fontFamily: 'BAARS', fontSize: 22, fontWeight: FontWeight.bold
                    ),),
                    Icon(Icons.photo_camera, color: themeColor,)
                  ],
                ),
                SizedBox(height: 20,),
                Container(
                  height: MediaQuery.of(context).size.height/1.7,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 20,),
                      Container(
                        height: 220,
                        width: 220,
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.3),
                          shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage(_image == null
                                    ? 'assets/images/man.jpg'
                                    : _image.path),
                                fit: BoxFit.cover)
                        ),
                      ),
                      SizedBox(height: 50,
                        child: _loadImage ?Text("Loading ...",style: TextStyle(color: themeColor),):null,
                      ),
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
                            child: FlatButton.icon(
                                onPressed: getImageFromFils,
                                icon: Icon(Icons.camera_alt, color: Colors.white,),
                                label: Text(
                                  'Télécharger',
                                  style: TextStyle(
                                      color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18, fontFamily: 'BAARS'),
                                )),)
                          ),
                        ),
                    ],
                  ),
                )
              ],
            ),
          ),
              ))

    );
  }
}
