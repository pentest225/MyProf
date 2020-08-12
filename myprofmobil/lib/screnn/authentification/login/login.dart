import 'package:flutter/material.dart';
import 'package:myprofmobil/outils/myStyle.dart';
import 'package:myprofmobil/screnn/home_screen.dart';
import 'login_header.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
  final _formKey = GlobalKey<FormState>();
  Map<String,String>userInfo={};

  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 400));

    _offsetController = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1000));

    heightAnimation = Tween<Size>(
            begin: Size(double.infinity, 293), end: Size(double.infinity, 470))
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

void submitForm(){
  bool isValidate = _formKey.currentState.validate();
  if(isValidate){
    print("Login Mode $loginMode");
    print("Info User $userInfo");
  }
}
  bool loginMode = true;
  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    final conexionHeight = deviceHeight * .4;
    final inscriptionHeight = deviceHeight * .5;
    if (_controller.isCompleted) {
      _offsetController.forward();
    } else {
      _offsetController.reverse();
    }

    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        width: deviceWidth,
        color: fondcolor,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              LoginHeader(),
              Container(
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
                    // Form Section
                    Form(
                      key: _formKey,
                      child: Column(
                        children: <Widget>[
                          //Name Field
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
                                child: TextFormField(
                                  cursorColor: Colors.grey,
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'nom',
                                      hintStyle: TextStyle(
                                          fontFamily: 'Barlow',
                                          fontWeight: FontWeight.w300),
                                      suffixIcon: Icon(
                                        Icons.person,
                                        color: themeColor,
                                        size: 20,
                                      )),
                                  validator: (value) {
                                    if (!loginMode && value.trim().isEmpty) {
                                      return "yor name is required ";
                                    }
                                    userInfo["usermane"]=value;
                                    return null;
                                  },
                                ),
                              ),
                            ),
                          // Last Name Field
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
                                child: TextFormField(
                                  cursorColor: Colors.grey,
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'prenoms',
                                      hintStyle: TextStyle(
                                          fontFamily: 'Barlow',
                                          fontWeight: FontWeight.w300),
                                      suffixIcon: Icon(
                                        Icons.person,
                                        color: themeColor,
                                        size: 20,
                                      )),
                                  validator: (value) {
                                    if (!loginMode && value.trim().isEmpty ) {
                                      return "yor lastname is required ";
                                    }
                                    userInfo["lasteName"]=value;
                                    return null;
                                  },
                                ),
                              ),
                            ),
                          // Email Field
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
                                  bottom: BorderSide(
                                      color: Colors.grey.withOpacity(0.5)),
                                )),
                            child: TextFormField(
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
                              validator: (value) {
                                if (value.isEmpty) {
                                  return "yor Email is required ";
                                }
                                userInfo["email"]=value;
                                return null;
                              },
                            ),
                          ),
                          // Password Field
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
                                  bottom: BorderSide(
                                      color: Colors.grey.withOpacity(0.5)),
                                )),
                            child: TextFormField(
                              obscureText: true,
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
                              validator: (value) {
                                if (value.trim().isEmpty || value.length < 6) {
                                  return "a good password is required (6 charateres minimun)";
                                }
                                userInfo["password"]=value;
                                return null;
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    //Bouton de validation
                    if (!_controller.isAnimating)
                      InkWell(
                        onTap: () {
                          submitForm();
                          // Navigator.of(context).pushNamed(HomeScreen.rooteName);
                        },
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
                              loginMode ? "Se connecter" : "S'inscrire",
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
                      ),
                    if (!loginMode && !_controller.isAnimating)
                      Container(
                        margin: EdgeInsets.only(top: deviceHeight * .02),
                        height: 70,
                        //color: themeColor,
                        child: Column(
                          children: <Widget>[
                            Text(
                              "Ou s'inscrire avec un Media Social",
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontFamily: 'BAARS',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  height: 35,
                                  width: 35,
                                  decoration: BoxDecoration(
                                      color: accanceColor.withOpacity(0.1),
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Color(0x1a000000),
                                            blurRadius: 10,
                                            spreadRadius: 0,
                                            offset: Offset(0, 10))
                                      ]),
                                  child: Center(
                                    child: IconButton(
                                      icon: FaIcon(
                                        FontAwesomeIcons.facebookF,
                                        color: accanceColor,
                                        size: 20,
                                      ),
                                      onPressed: () {},
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: deviceWidth * .08,
                                ),
                                Container(
                                  height: 35,
                                  width: 35,
                                  decoration: BoxDecoration(
                                      color: accanceColor.withOpacity(0.1),
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Color(0x1a000000),
                                            blurRadius: 10,
                                            spreadRadius: 0,
                                            offset: Offset(0, 10))
                                      ]),
                                  child: IconButton(
                                    icon: FaIcon(
                                      FontAwesomeIcons.google,
                                      size: 20,
                                      color: accanceColor,
                                    ),
                                    onPressed: () {},
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: deviceHeight / 20 - 15),
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
                        loginMode ? "S'inscrire" : "Se Connecter",
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
