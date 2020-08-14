import 'package:flutter/material.dart';
import 'package:myprofmobil/outils/myStyle.dart';
import 'package:myprofmobil/providers/auth/authenticate.dart';
import 'package:provider/provider.dart';
import 'login_header.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginPage extends StatefulWidget {
  static const routeName = "MyLogin";
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with TickerProviderStateMixin {
  AnimationController _controller;
  Animation<Size> heightAnimation;
  AnimationController _offsetController;
  Animation<Offset> offsetAnimation;
  final _formKey = GlobalKey<FormState>();
  final _finalFormKey = GlobalKey<FormState>();
  Map<String, String> userInfo = {};
  bool loading = false;
  bool logError = false;
  bool successLog = false;
  String logMassage;
  Map<String, dynamic> dataFromGoogle;
  String defaultEmail;
  TextEditingController emailControler = TextEditingController();

  bool loginMode = true;
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

  Future<void> submitForm() async {
    bool isValidate = _formKey.currentState.validate();
    if (isValidate) {
      setState(() {
        loading = true;
      });
      if (loginMode) {
        await Provider.of<Authenticated>(context, listen: false)
            .loginWithEmailAndPassword(
                email: userInfo["email"], password: userInfo["password"])
            .catchError((onError) {
          setState(() {
            logError = true;
            logMassage = "Login ou mot de passe incorecte";
          });
          print("Error Login ");
        });
      } else {
        await Provider.of<Authenticated>(context, listen: false)
            .signUpWithUsernameEmailAndPassword(
                nom: userInfo["username"],
                prenoms: userInfo["lasteName"],
                email: userInfo["email"],
                password: userInfo["password"])
            .catchError((error) {
          setState(() {
            logError = true;
            logMassage = "veillez vérifier vos informations";
          });
        });
        setState(() {
          loginMode = true;
          _controller.reverse();
          successLog = true;
          logMassage = "Inscription réussi veillez vous connecté";
        });
      }
      setState(() {
        loading = false;
      });
    } else {
      setState(() {
        logError = false;
      });
    }
  }

  Future<void> finalise() async {
    final finalFormIsValide = _finalFormKey.currentState.validate();
    // Il c'est inscrit avec google
    // on Doit donc l'inscrire dans notre bd
    if (finalFormIsValide) {
      print("##################");
      print(dataFromGoogle);

      await Provider.of<Authenticated>(context, listen: false)
          .signUpWithUsernameEmailAndPassword(
              nom: dataFromGoogle["nom"],
              prenoms: dataFromGoogle["prenoms"],
              email: dataFromGoogle["email"],
              password: dataFromGoogle["password"]);
      //Apres sont inscription on le log
      await Provider.of<Authenticated>(context, listen: false)
          .loginWithEmailAndPassword(
              email: dataFromGoogle["email"],
              password: dataFromGoogle["password"]);
    }
  }

  Future<void> loginWithGoogle() async {
    print("Login With google");
    dataFromGoogle = await Provider.of<Authenticated>(context, listen: false)
        .signUpWithGoogle()
        .catchError((onError) {
      print("Error LOGIN GOOGLE ");
    });

    setState(() {
      loginMode = true;
      _controller.reverse();
      emailControler.text = dataFromGoogle["email"];
      successLog = true;
      logMassage =
          "Inscription réussi veillez entrer un mote de passe pour vous connecté";
      print("Google $defaultEmail");
    });
  }

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
                child: dataFromGoogle == null
                    ? Column(
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
                                                color: Colors.grey
                                                    .withOpacity(0.5)),
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
                                          if (!loginMode &&
                                              value.trim().isEmpty) {
                                            return "yor name is required ";
                                          }
                                          userInfo["username"] = value;
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
                                                color: Colors.grey
                                                    .withOpacity(0.5)),
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
                                          if (!loginMode &&
                                              value.trim().isEmpty) {
                                            return "yor lastname is required ";
                                          }
                                          userInfo["lasteName"] = value;
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
                                            color:
                                                Colors.grey.withOpacity(0.5)),
                                      )),
                                  child: TextFormField(
                                    controller: emailControler,
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
                                      userInfo["email"] = value;
                                      return null;
                                    },
                                  ),
                                ),
                                // Password Field
                                //Error Message
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
                                            color:
                                                Colors.grey.withOpacity(0.5)),
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
                                      if (value.trim().isEmpty ||
                                          value.length < 3) {
                                        return "a good password is required (6 charateres minimun)";
                                      }
                                      userInfo["password"] = value;
                                      return null;
                                    },
                                  ),
                                ),
                                if (logError && !_controller.isAnimating)
                                  Container(
                                    alignment: Alignment.bottomRight,
                                    padding: EdgeInsets.only(right: 20),
                                    child: Text(logMassage,
                                        style: TextStyle(
                                            color: Colors.red,
                                            fontStyle: FontStyle.italic)),
                                  ),
                                //Success Message
                                if (successLog && !_controller.isAnimating)
                                  Container(
                                    alignment: Alignment.bottomRight,
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 20),
                                    child: Text(logMassage,
                                        style: TextStyle(
                                            color: Colors.green,
                                            fontStyle: FontStyle.italic)),
                                  )
                              ],
                            ),
                          ),
                          //Bouton de validation
                          if (!_controller.isAnimating)
                            InkWell(
                              onTap: () {
                                submitForm();
                              },
                              child: Container(
                                margin: EdgeInsets.only(
                                    top: deviceHeight / 14 - 14),
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
                                  child: !loading
                                      ? Text(
                                          loginMode
                                              ? "Se connecter"
                                              : "S'inscrire",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16),
                                        )
                                      : Text(
                                          "Loading ...",
                                          style: TextStyle(color: Colors.white),
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
                                            color:
                                                accanceColor.withOpacity(0.1),
                                            borderRadius:
                                                BorderRadius.circular(10),
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
                                      // Google Login Btn
                                      Container(
                                        height: 35,
                                        width: 35,
                                        decoration: BoxDecoration(
                                            color:
                                                accanceColor.withOpacity(0.1),
                                            borderRadius:
                                                BorderRadius.circular(10),
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
                                          onPressed: loginWithGoogle,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )
                        ],
                      )
                    :
//###########################################################
                    //Container Pour finalisé l'inscription de l'utilisateur
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Container(
                            child: Text(
                              "Finalisé",
                              style: TextStyle(
                                  color: accanceColor,
                                  fontFamily: 'Barlow',
                                  fontSize: 25,
                                  fontWeight: FontWeight.w400),
                            ),
                            // ,
                          ),
                          Text(
                            "${emailControler.text} ",
                            style: TextStyle(
                                color: themeColor,
                                fontFamily: 'Barlow',
                                fontSize: 20,
                                fontWeight: FontWeight.w400),
                          ),
                          // Form Finalisation Section
                          Form(
                            key: _finalFormKey,
                            child: Column(
                              children: <Widget>[
                                //Success Message
                                if (successLog && !_controller.isAnimating)
                                  Container(
                                    alignment: Alignment.bottomRight,
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 20),
                                    child: Text(logMassage,
                                        style: TextStyle(
                                            color: Colors.green,
                                            fontStyle: FontStyle.italic)),
                                  ),
                                // Password Finalisation Field
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
                                            color:
                                                Colors.grey.withOpacity(0.5)),
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
                                      if (value.trim().isEmpty ||
                                          value.length < 3) {
                                        return "A good password is required (6 charateres minimun)";
                                      }
                                      dataFromGoogle["password"] = value;
                                      return null;
                                    },
                                  ),
                                ),
                                if (logError && !_controller.isAnimating)
                                  Container(
                                    alignment: Alignment.bottomRight,
                                    padding: EdgeInsets.only(right: 20),
                                    child: Text(logMassage,
                                        style: TextStyle(
                                            color: Colors.red,
                                            fontStyle: FontStyle.italic)),
                                  ),
                              ],
                            ),
                          ),
                          //Bouton de validation
                          if (!_controller.isAnimating)
                            InkWell(
                              onTap: finalise,
                              child: Container(
                                margin: EdgeInsets.only(
                                    top: deviceHeight / 14 - 14),
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
                                  child: !loading
                                      ? Text(
                                          "Se connecter",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16),
                                        )
                                      : Text(
                                          "Loading ...",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                ),
                              ),
                            ),
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
