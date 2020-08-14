import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:myprofmobil/outils/myStyle.dart';

class ImageStep extends StatefulWidget {
  @override
  _ImageStepState createState() => _ImageStepState();
}

class _ImageStepState extends State<ImageStep>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  File _image;
  bool _loadImage = false;
  final picker = ImagePicker();

  Future getImage() async {
    try {
      final pickedFile = await picker.getImage(source: ImageSource.camera);
      print("get Image ${pickedFile.runtimeType}");
      print("get Image ${pickedFile.path}");
      setState(() {
        _image = File(pickedFile.path);
        print(_image.runtimeType);
      });
    } catch (error) {
      print("Error to picke Image ${error.toString()}");
    }
  }

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
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: FAProgressBar(
            //     progressColor: accanceColor,
            //     currentValue: 90,
            //     displayText: '%',
            //     animatedDuration: Duration(seconds: 1),
            //     maxValue: 100,
            //   ),
            // ),
            /*Padding(
                            padding: EdgeInsets.all(8.0),
                            child: new LinearPercentIndicator(
                              width: MediaQuery.of(context).size.width/1.1,
                              animation: true,
                              lineHeight: 20.0,
                              animationDuration: 2000,
                              percent: 0.90,
                              center: Text("90.0%", style: TextStyle(
                                  color: Colors.white
                              ),),
                              linearStrokeCap: LinearStrokeCap.roundAll,
                              progressColor: accanceColor,
                            ),
                          ),*/
            SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Votre plus beau profil",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 25,
                    fontFamily: 'BAARS',
                    fontWeight: FontWeight.w700),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                  color: themeColor,
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage(_image == null
                          ? 'assets/images/books.jpg'
                          : _image.path),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              height: 20,
              child: _loadImage
                  ? Text(
                      "Loading ...",
                      style: TextStyle(color: themeColor),
                    )
                  : null,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height / 18,
                  // width: MediaQuery.of(context).size.width / 25,
                  decoration: BoxDecoration(
                      color: accanceColor,
                      borderRadius: BorderRadius.circular(100)),
                  child: FlatButton.icon(
                      onPressed: getImageFromFils,
                      icon: Icon(Icons.camera_alt),
                      label: Text(
                        'Télécharger',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                      )),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 18,
                  width: MediaQuery.of(context).size.width / 3,
                  decoration: BoxDecoration(
                      color: accanceColor,
                      borderRadius: BorderRadius.circular(100)),
                  child: Center(
                      child: Text(
                    'Récadrer',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                  )),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
