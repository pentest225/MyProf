import 'package:flutter/material.dart';

class SocialBtn extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color color;
  SocialBtn(this.title,this.icon,this.color);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.only(top: 10),
        padding: EdgeInsets.only(left: 10),
        height: 50,
        width: MediaQuery.of(context).size.width / 1.2,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(100)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              icon,
              size: 18,
              color: Colors.white,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              title,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontFamily: 'BAARS',
                  fontWeight: FontWeight.w700),
            )
          ],
        ),
      ),
    );
  }
}
