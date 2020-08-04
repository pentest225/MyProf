import 'package:flutter/material.dart';
import 'package:myprofmobil/outils/myStyle.dart';
import 'package:myprofmobil/widgets/callandarBottomCard.dart';
import 'package:myprofmobil/widgets/callandarTopCard.dart';


class Calendar extends StatelessWidget {
  static const routeName = "Calendar";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: MyBody(),
      ),
    );
  }
}

class MyBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: ExactAssetImage(backImage),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Colors.black87.withOpacity(.8), BlendMode.darken)),
            ),
          ),
          TopCarAnimated(),
          BottomCard()
        ],
      ),
    );
  }
}
