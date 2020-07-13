import 'package:flutter/material.dart';
import '../outils/myStyle.dart';

class ProfWidget extends StatelessWidget {
  static const routeName = "profWidget";
  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    final containerHeiht = deviceHeight * .4;
    final containerWidth = deviceWidth * .5 - 10;
    return Scaffold(
      body: Center(
        child: Container(
          height: containerHeiht,
          
          width: containerWidth,
          child: Stack(
            children: <Widget>[
              Container(
                height: containerHeiht,
                color: Colors.transparent,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                        height: containerHeiht * .3,
                        color: Colors.transparent,
                        child: Center(
                          child: Text("Transparent"),
                        )),
                    Container(
                      height: containerHeiht * .7,
                      color: Colors.yellow,
                      child: Center(
                        child: Text("Info prof"),
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                bottom: containerHeiht * .5,
                top: 10,
                left: 10,
                right: 0,
                child: Container(color: Colors.grey,),
              )
            ],
          ),
        ),
      ),
    );
  }
}
