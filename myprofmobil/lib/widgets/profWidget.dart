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
    return Container(
      height: containerHeiht,
      width: containerWidth,
      child: Stack(
        children: <Widget>[
          Container(
            height: containerHeiht,
            color: Colors.transparent,
            margin: EdgeInsets.only(left: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height: containerHeiht * .3,
                  color: Colors.transparent,
                ),
                Container(
                  height: containerHeiht * .7,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    margin: EdgeInsets.only(top: 50),
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Dagouaga",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Patrick Ben - Sira",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Icon(
                                  Icons.star_border,
                                  color: themeColor,
                                ),
                                Icon(
                                  Icons.star_border,
                                  color: themeColor,
                                ),
                                Icon(
                                  Icons.star_border,
                                  color: themeColor,
                                ),
                                Icon(
                                  Icons.star_half,
                                  color: themeColor,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Divider(),
                          Text(
                            "Dévéloppeur Flutter",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Positioned(
            bottom: containerHeiht * .5,
            top: 45,
            left: 40,
            right: 40,
            child: Container(
              height: containerHeiht * .3,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage("assets/images/fille.jpg"),
                      fit: BoxFit.fitHeight)),
            ),
          )
        ],
      ),
    );
  }
}
