import 'package:flutter/material.dart';
import 'package:myprofmobil/outils/myStyle.dart';
import 'package:myprofmobil/providers/feature_toggle_anim.dart';

import 'package:provider/provider.dart';

class LoginFin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    final loginModProvider =
        Provider.of<ToggleBottomSheet>(context);
    return Container(
      margin: EdgeInsets.only(top: deviceHeight / 14 - 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            loginModProvider.isLoginMode
                ? 'Pas de compte? '
                : 'Déja un compte?',
            style: TextStyle(
                color: Colors.black54, fontSize: 16, fontFamily: 'BAARS'),
          ),
          InkWell(
            onTap: () {
              loginModProvider.toggleLoginMode();
              print("ici");
            },
            child: Text(
              loginModProvider.isLoginMode ? "S'inscrire" : "Ce Connecter",
              style: TextStyle(
                  color: themeColor,
                  fontSize: 16,
                  fontFamily: 'BAARS',
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
