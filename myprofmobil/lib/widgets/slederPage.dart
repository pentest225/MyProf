import 'dart:async';

import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../outils/myStyle.dart';

class slederPage extends StatefulWidget {
  final String title;
  final String subtitle;
  final String imagePath;

  slederPage(this.title, this.subtitle, this.imagePath);

  @override
  _slederPageState createState() => _slederPageState();
}

class _slederPageState extends State<slederPage>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<Size> _heightAnimation;


  @override
  void initState() {
    // TODO: implement initState
    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 800));

    _heightAnimation = Tween<Size>(
            begin: Size(double.infinity, 0), end: Size(double.infinity, 70))
        .animate(CurvedAnimation(parent: _controller, curve: Curves.linear));


    _heightAnimation.addListener(() {setState(() {

    });});
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidht = MediaQuery.of(context).size.width;
    _controller.forward();

    return Container(
      child: Stack(
        children: [
          Positioned(
            top: _heightAnimation.value.height,
            //top: -10,
            left: 0,
            right: 0,
            child: Container(
              height: 200,
              child: Container(
                height: 190,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(this.widget.imagePath),
                        fit: BoxFit.fitHeight,
                        colorFilter:
                        ColorFilter.mode(bgColor, BlendMode.darken))),
              ),
            ),
          ),
          AnimatedPositioned(
            duration: Duration(milliseconds: 150),
            bottom: _heightAnimation.value.height - 10,
            child: Container(
              margin: EdgeInsets.only(top: 20),
              alignment: Alignment.topLeft,
              height: 200,
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      this.widget.title,
                      textAlign: TextAlign.center,
                      style: h1,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                      width: deviceWidht -20,
                      padding: EdgeInsets.all(10),
                      child: Text(this.widget.subtitle, style: h2,textAlign: TextAlign.justify,))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
