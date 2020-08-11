import 'package:flutter/material.dart';
import 'package:myprofmobil/outils/myStyle.dart';
import 'package:myprofmobil/providers/feature_toggle_anim.dart';
import 'package:provider/provider.dart';

import '../../home_screen.dart';

class LoginSection extends StatefulWidget {
  @override
  _LoginSectionState createState() => _LoginSectionState();
}

class _LoginSectionState extends State<LoginSection>
    with TickerProviderStateMixin {
  AnimationController _controller;
  Animation<Offset> _offsetAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: false);
    _offsetAnimation = Tween<Offset>(
      begin: Offset.zero,
      end: const Offset(1.5, 0.0),
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.elasticIn,
    ));
  }

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    final conexionHeight = deviceHeight * .4;
    final inscriptionHeight = deviceHeight * .5;
    final loginModProvider = Provider.of<ToggleBottomSheet>(context);

    return Container(
      
      
      margin: EdgeInsets.only(top: deviceHeight / 16),
      height: loginModProvider.isLoginMode ? conexionHeight : inscriptionHeight,
      width: deviceWidth / 1.1,
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
            color: Color(0x1a000000),
            blurRadius: 10,
            spreadRadius: 0,
            offset: Offset(0, 10))
      ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 5),
            child: Text(
              loginModProvider.isLoginMode ? 'Connexion ' : 'Inscription ',
              style: TextStyle(
                  color: accanceColor,
                  fontFamily: 'Barlow',
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 10),
            margin: EdgeInsets.only(
              top: 10,
            ),
            height: deviceHeight / 11 - 15,
            width: deviceWidth / 1.2,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                  bottom: BorderSide(color: Colors.grey.withOpacity(0.5)),
                )),
            child: TextField(
              cursorColor: Colors.grey,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'username',
                  hintStyle: TextStyle(
                      fontFamily: 'Barlow', fontWeight: FontWeight.w300),
                  suffixIcon: Icon(
                    Icons.person,
                    color: themeColor,
                    size: 20,
                  )),
            ),
          ),
          //Password Field
          Container(
            padding: EdgeInsets.only(left: 10),
            margin: EdgeInsets.only(
              top: 10,
            ),
            height: deviceHeight / 11 - 15,
            width: deviceWidth / 1.2,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                  bottom: BorderSide(color: Colors.grey.withOpacity(0.5)),
                )),
            child: TextField(
              cursorColor: Colors.grey,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'email',
                  hintStyle: TextStyle(
                      fontFamily: 'Barlow', fontWeight: FontWeight.w300),
                  suffixIcon: Icon(
                    Icons.mail,
                    color: themeColor,
                    size: 20,
                  )),
            ),
          ),
          if (!loginModProvider.isLoginMode)
            SlideTransition(
              position: _offsetAnimation,
              child: Container(
                padding: EdgeInsets.only(left: 10),
                margin: EdgeInsets.only(
                  top: 10,
                ),
                height: deviceHeight / 11 - 15,
                width: deviceWidth / 1.2,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border(
                      bottom: BorderSide(color: Colors.grey.withOpacity(0.5)),
                    )),
                child: TextField(
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'mot de passe',
                      hintStyle: TextStyle(
                          fontFamily: 'Barlow', fontWeight: FontWeight.w300),
                      suffixIcon: Icon(
                        Icons.lock,
                        color: themeColor,
                        size: 20,
                      )),
                ),
              ),
            ),
          //Bouton de validation
          InkWell(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.only(top: deviceHeight / 14 - 14),
              height: deviceHeight / 13 - 10,
              width: deviceWidth / 2,
              decoration: BoxDecoration(
                  color: accanceColor,
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black87,
                        offset: Offset(0.0, 1.5),
                        blurRadius: 1.5)
                  ]),
              child: Center(
                child: Text(
                  loginModProvider.isLoginMode ? "Ce connecter" : "S'inscrire",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
              ),
            ),
          ),
          if (loginModProvider.isLoginMode)
            Container(
              margin: EdgeInsets.only(top: 15),
              padding: EdgeInsets.only(right: 10),
              alignment: Alignment.topRight,
              child: Text(
                'Mot de passe oublié',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.withOpacity(0.8)),
              ),
            )
        ],
      ),
    );
  }
}
