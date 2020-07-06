import 'package:flutter/material.dart';

class MatierreCard extends StatelessWidget {
  String matierre;
  MatierreCard(this.matierre);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 20,
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
          color: Colors.grey.withOpacity(.5),
          borderRadius: BorderRadius.circular(20)),
      child: Text(
        "${this.matierre}",
        style: TextStyle(
          fontSize: 25,
        ),
      ),
    );
  }
}
