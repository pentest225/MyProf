import 'package:flutter/material.dart';
import 'package:myprofmobil/outils/myStyle.dart';
import 'package:myprofmobil/providers/feature_toggle_anim.dart';
import 'package:provider/provider.dart';
import '../../home_screen.dart';
import '../../regis.dart';
import '../register/registered.dart';
import 'login_fin.dart';
import 'login_header.dart';
import 'login_section.dart';

class LoginPage extends StatefulWidget {
  static const routeName = "Login";
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with TickerProviderStateMixin {
  AnimationController _controller;
  Animation<Size> heightAnimation;
  AnimationController _offsetController;
  Animation<Offset> offsetAnimation;

  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 400));

    _offsetController = AnimationController(
        vsync: this, duration: Duration(milliseconds: 400));

    heightAnimation = Tween<Size>(
            begin: Size(double.infinity, 293), end: Size(double.infinity, 367))
        .animate(CurvedAnimation(parent: _controller, curve: Curves.linear));

    heightAnimation.addListener(() {
      setState(() {});
    });
    offsetAnimation = Tween<Offset>(
      begin: const Offset(1.5, 0.0),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _offsetController,
      curve: Curves.elasticIn,
    ));
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  bool loginMode = true;
  @override
  Widget build(BuildContext context) {
    
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    final conexionHeight = deviceHeight * .4;
    final inscriptionHeight = deviceHeight * .5;
    if (_controller.isCompleted) {
      print('fin controlleur');
      _offsetController.forward();
    } else {
      print("current controler");
      _offsetController.reverse();
    }

    return Scaffold(
      body: Container(
        height: deviceHeight,
        width: deviceWidth,
        color: fondcolor,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              LoginHeader(),
              Container(
                margin: EdgeInsets.only(top: deviceHeight / 16),
                height: heightAnimation.value.height,
               
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
                        loginMode ? 'Connexion ' : 'Inscription ',
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
                            bottom:
                                BorderSide(color: Colors.grey.withOpacity(0.5)),
                          )),
                      child: TextField(
                        cursorColor: Colors.grey,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'username',
                            hintStyle: TextStyle(
                                fontFamily: 'Barlow',
                                fontWeight: FontWeight.w300),
                            suffixIcon: Icon(
                              Icons.person,
                              color: themeColor,
                              size: 20,
                            )),
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
                            bottom:
                                BorderSide(color: Colors.grey.withOpacity(0.5)),
                          )),
                      child: TextField(
                        cursorColor: Colors.grey,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'email',
                            hintStyle: TextStyle(
                                fontFamily: 'Barlow',
                                fontWeight: FontWeight.w300),
                            suffixIcon: Icon(
                              Icons.mail,
                              color: themeColor,
                              size: 20,
                            )),
                      ),
                    ),
                    //Password Field
                    if (!loginMode)
                    SlideTransition(
                      position: offsetAnimation,
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
                              bottom: BorderSide(
                                  color: Colors.grey.withOpacity(0.5)),
                            )),
                        child: TextField(
                          cursorColor: Colors.grey,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'mot de passe',
                              hintStyle: TextStyle(
                                  fontFamily: 'Barlow',
                                  fontWeight: FontWeight.w300),
                              suffixIcon: Icon(
                                Icons.lock,
                                color: themeColor,
                                size: 20,
                              )),
                        ),
                      ),
                    ),
                    //Bouton de validation
                    if (!_controller.isAnimating)
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
                              loginMode ? "Ce connecter" : "S'inscrire",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                          ),
                        ),
                      ),
                    if (loginMode && !_controller.isAnimating)
                      Container(
                        child: Flexible(
                          child: Container(
                            margin: EdgeInsets.only(top: 15),
                            padding: EdgeInsets.only(right: 10),
                            alignment: Alignment.topRight,
                            child: Text(
                              'Mot de passe oublié',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey.withOpacity(0.8)),
                            ),
                          ),
                        ),
                      )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: deviceHeight / 14 - 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      loginMode ? 'Pas de compte? ' : 'Déja un compte?',
                      style: TextStyle(
                          color: Colors.black54,
                          fontSize: 16,
                          fontFamily: 'BAARS'),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          loginMode = !loginMode;
                          if (!loginMode) {                            
                            _controller.forward();
                          } else {
                            _controller.reverse();
                          }
                        });
                      },
                      child: Text(
                        loginMode ? "S'inscrire" : "Ce Connecter",
                        style: TextStyle(
                            color: themeColor,
                            fontSize: 16,
                            fontFamily: 'BAARS',
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
