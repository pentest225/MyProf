import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../outils/myStyle.dart';

class SlederPage extends StatefulWidget {
  final String title;
  final String subtitle;
  final String imagePath;
  SlederPage(this.title, this.subtitle, this.imagePath);
  @override
  _SlederPageState createState() => _SlederPageState();
}

class _SlederPageState extends State<SlederPage>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<Size> _heightAnimation;


  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 800));

    _heightAnimation = Tween<Size>(
            begin: Size(double.infinity, 0), end: Size(double.infinity, 35))
        .animate(CurvedAnimation(parent: _controller, curve: Curves.linear));
    _heightAnimation.addListener(() {setState(() {

    });});
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    // final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidht = MediaQuery.of(context).size.width;
    _controller.forward();

    return Container(
      child: Stack(
        children: [
          Positioned(
            top: _heightAnimation.value.height,
            left: 0,
            right: 0,
            child: Container(
              height: 200,
              child: Container(
                height: 190,
                margin: EdgeInsets.all(10),
               
                child: SvgPicture.asset(this.widget.imagePath),
              ),
            ),
          ),
          AnimatedPositioned(
            duration: Duration(milliseconds: 150),
            bottom: _heightAnimation.value.height - 20,
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
