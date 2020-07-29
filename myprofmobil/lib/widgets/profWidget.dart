import 'package:flutter/material.dart';
import 'package:myprofmobil/screnn/profProfil.dart';
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
        margin: EdgeInsets.only(top: 35),
        height: containerHeiht * .7,
        width: containerWidth,
        child: Stack(
    overflow: Overflow.visible,
    children: <Widget>[
      Container(
        height: containerHeiht * .7,
        
        margin: EdgeInsets.only(left: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamed(ProfProfil.routeName);
              },
              child: Container(
                alignment: AlignmentDirectional.bottomCenter,
                height: containerHeiht * .7,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Container(
                  margin: EdgeInsets.only(top: 50),
                  padding:
                      EdgeInsets.symmetric(horizontal: 10, vertical: 15),
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
                          height: 15,
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment:
                                MainAxisAlignment.spaceEvenly,
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
                          height: 5,
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
              ),
            )
          ],
        ),
      ),
      Positioned(
        top: -35,
        bottom: containerHeiht * .6 - 10,
        left: 52,
        right: 52,
        child: Container(
          
          decoration: BoxDecoration(
            color: Colors.black26,
              
              image: DecorationImage(
                  image: AssetImage("assets/images/fille.jpg"),
                  fit: BoxFit.cover
                  ),
              shape: BoxShape.circle,
              ),
        ),
      )
    ],
        ),
      );
  }
}
