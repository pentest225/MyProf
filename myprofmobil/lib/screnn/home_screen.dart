import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:myprofmobil/outils/myStyle.dart';
import 'package:myprofmobil/pages/categorie.dart';

import 'package:myprofmobil/screnn/all_prof.dart';
import 'package:myprofmobil/widgets/SearchCard.dart';
import 'package:myprofmobil/widgets/myDrower.dart';

import 'package:myprofmobil/manager/feature_toggle_anim.dart';
import 'package:provider/provider.dart';
import 'demande.dart';

// LA PAGE INDEX DE L'APPLICATIONS
class HomeScreen extends StatelessWidget {
  static const rooteName = '/home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrower(),
      backgroundColor: fondcolor,
      body: SafeArea(child: LayoutStarts()),
    );
  }
}

class LayoutStarts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: themeColor,
              image: DecorationImage(
                  image: AssetImage(backImage),
                  fit: BoxFit.cover,
                  colorFilter:
                      ColorFilter.mode(Colors.black45, BlendMode.darken)),
            ),
          ),
          CarDetailsAnimation(),
          CustomBottomSheet(),
        ],
      ),
    );
  }
}

class CarDetailsAnimation extends StatefulWidget {
  @override
  _CarDetailsAnimationState createState() => _CarDetailsAnimationState();
}

class _CarDetailsAnimationState extends State<CarDetailsAnimation>
    with TickerProviderStateMixin {
  AnimationController fadeController;
  AnimationController scaleController;

  Animation fadeAnimation;
  Animation scaleAnimation;

  @override
  void initState() {
    super.initState();

    fadeController =
        AnimationController(duration: Duration(milliseconds: 180), vsync: this);

    scaleController =
        AnimationController(duration: Duration(milliseconds: 350), vsync: this);

    fadeAnimation = Tween(begin: 1.0, end: 1.0).animate(fadeController);
    scaleAnimation = Tween(begin: 0.8, end: 1.0).animate(CurvedAnimation(
      parent: scaleController,
      curve: Curves.easeInOut,
      reverseCurve: Curves.easeInOut,
    ));
  }

  forward() {
    scaleController.forward();
    fadeController.forward();
  }

  reverse() {
    scaleController.reverse();
    fadeController.reverse();
  }

  @override
  Widget build(BuildContext context) {
    // final manager = context.fetch<StateBloc>();
    final toggleAnim = Provider.of<ToggleBottomSheet>(context);
    toggleAnim.isAnimating ? forward() : reverse();

    return ScaleTransition(
      scale: scaleAnimation,
      child: FadeTransition(
        opacity: fadeAnimation,
        child: CarDetails(),
      ),
    );
  }
}

//SECTION HEADER (APPBAR TITRE DROWER ETC...)
class CarDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height / 2,
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: _carTitle(context),
            ),
            SizedBox(height: 15),
            Container(
              width: double.infinity,
              child: SearchCard(),
            )
          ],
        ));
  }

  _carTitle(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          height: 10,
        ),
        //APPBARE
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            InkWell(
              onTap: () => Scaffold.of(context).openDrawer(),
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(10)),
                child: Icon(
                  Icons.filter_list,
                  color: themeColor,
                  size: 30,
                ),
              ),
            ),
            Text(
              'MyProfs',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                  fontFamily: 'BAARS'),
            )
          ],
        ),
        SizedBox(
          height: 40,
        ),
        RichText(
          text: TextSpan(
              style: TextStyle(
                  color: Colors.white, fontSize: 34, fontFamily: 'BAARS'),
              children: [
                TextSpan(text: "Trouvez le Professeur"),
                TextSpan(text: "\n"),
                TextSpan(
                    text: "Parfait",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontFamily: 'BAARS',
                        color: themeColor)),
              ]),
        ),
        SizedBox(height: 40),
        // ),
      ],
    );
  }
}

class CustomBottomSheet extends StatefulWidget {
  @override
  _CustomBottomSheetState createState() => _CustomBottomSheetState();
}

class _CustomBottomSheetState extends State<CustomBottomSheet>
    with SingleTickerProviderStateMixin {
  double sheetTop = 400;
  double minSheetTop = 30;

  Animation<double> animation;
  AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        duration: const Duration(milliseconds: 200), vsync: this);
    animation = Tween<double>(begin: sheetTop, end: minSheetTop)
        .animate(CurvedAnimation(
      parent: controller,
      curve: Curves.easeInOut,
      reverseCurve: Curves.easeInOut,
    ))
          ..addListener(() {
            setState(() {});
          });
  }

  forwardAnimation() {
    controller.forward();
  }

  reverseAnimation() {
    controller.reverse();
    Provider.of<ToggleBottomSheet>(context,listen: false).toggleAnimation();
  }

  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: animation.value,
      left: 0,
      child: GestureDetector(
        onTap: () {
          controller.isCompleted ? reverseAnimation() : forwardAnimation();
        },
        onVerticalDragEnd: (DragEndDetails dragEndDetails) {
          //upward drag
          if (dragEndDetails.primaryVelocity < 0.0) {
            forwardAnimation();
            controller.forward();
          } else if (dragEndDetails.primaryVelocity > 0.0) {
            //downward drag
            reverseAnimation();
          } else {
            return;
          }
        },
        child: SheetContainer(),
      ),
    );
  }
}

//Container dynamique (arrondie)
class SheetContainer extends StatefulWidget {
  @override
  _SheetContainerState createState() => _SheetContainerState();
}

class _SheetContainerState extends State<SheetContainer>
    with TickerProviderStateMixin {
  List<String> matiere = ['Cuisine', 'Informatique', 'Musique', 'Scolaire'];
  TextEditingController matierreController = TextEditingController();
  bool onTapInputMatierre;
  AnimationController _controller;
  Animation<double> _animation;
  bool formSubmited = false;
  double _miles = 0.0;
  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    );
    _animation = _controller;
    onTapInputMatierre = true;
    super.initState();
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
    double sheetItemHeight = 110;
    double itemHeight = 120;
    return Container(
      padding: EdgeInsets.only(top: 25),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
        color: fondcolor.withOpacity(0.9),
      ),
      child: Column(
        children: <Widget>[
          drawerHandle(),
          Expanded(
            flex: 1,
            child: ListView(
              children: <Widget>[
                listModule(sheetItemHeight, context),
                SizedBox(
                  height: 20,
                ),
                offerDetails(itemHeight, context),
                SizedBox(
                  height: 20,
                ),
                listMagazine(sheetItemHeight, context),
                SizedBox(
                  height: 30,
                ),
                // SECTION VIVRE DE SA PASSION
                marmaille(context),
                SizedBox(height: 200),
              ],
            ),
          )
        ],
      ),
    );
  }

  // Divider Container
  drawerHandle() {
    return Container(
      margin: EdgeInsets.only(bottom: 25),
      height: 3,
      width: 65,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: themeColor),
    );
  }
  // Je ne sait pas a quoi il sert

  // specifications(double sheetItemHeight) {
  //   return Container(
  //     padding: EdgeInsets.only(top: 15, left: 40),
  //     child: Column(
  //       crossAxisAlignment: CrossAxisAlignment.start,
  //       children: <Widget>[
  //         Text(
  //           "Specifications",
  //           style: TextStyle(
  //             color: Colors.black,
  //             fontWeight: FontWeight.w700,
  //             fontSize: 18,
  //           ),
  //         ),
  //         Container(
  //           margin: EdgeInsets.only(top: 15),
  //           height: sheetItemHeight,
  //           child: ListView.builder(
  //             scrollDirection: Axis.horizontal,
  //             itemCount: 3,
  //             itemBuilder: (context, index) {
  //               return Text('hi');
  //             },
  //           ),
  //         )
  //       ],
  //     ),
  //   );
  // }

  // Je ne sais pas  a quoi il sert

//####################################
// Classes Externe
  offerDetails(double itemHeight, context) {
    return Container(
      //margin: EdgeInsets.only(top: 20, left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text(
              "A propos",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 22,
                  fontFamily: 'BAARS'),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 150,
                width: MediaQuery.of(context).size.width / 2.4,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black54,
                          offset: Offset(0.0, 1.5),
                          blurRadius: 1.5)
                    ]),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        '+100',
                        style: TextStyle(
                            color: themeColor,
                            fontSize: 35,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Text(
                        'Professeurs et',
                        style: TextStyle(
                            color: themeColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        'Enseignants',
                        style: TextStyle(
                            color: themeColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Container(
                height: 150,
                width: MediaQuery.of(context).size.width / 2.4,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black54,
                          offset: Offset(0.0, 1.5),
                          blurRadius: 1.5)
                    ]),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        '+200',
                        style: TextStyle(
                            color: Colors.black54,
                            fontSize: 35,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Text(
                        'Etudiants et',
                        style: TextStyle(
                            color: Colors.black54,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        'Elèves',
                        style: TextStyle(
                            color: Colors.black54,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  marmaille(context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              "Dévenez professeur...",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 22,
                  fontFamily: 'BAARS'),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Container(
                // height: deviceHeight * .20,
                width: 310,
                margin: EdgeInsets.only(left: 10, right: 10),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: RichText(
                        text: TextSpan(children: <TextSpan>[
                          TextSpan(text: "Partagez votre \n", style: h1),
                          TextSpan(text: "Passion  ", style: h1),
                        ]),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Devenez indépendant, enseignez à votre rythme, fixez vos tarifs sans commission et rencontrez des milliers d’élèves motivés !",
                      style: TextStyle(color: Colors.black87),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    // Formulaire pour voir combien j'peux gagné
                    Container(
                      height: MediaQuery.of(context).size.height * .30,
                      child: Column(
                        children: [
                          Text(
                            "Découvrir combien je peux \n gagner :",
                            style: TextStyle(
                                color: accanceColor,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                backgroundColor: Colors.white),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          //Container Estimation des gains
                          Container(
                            child: Column(
                              children: [
                                Card(
                                  elevation: onTapInputMatierre ? 15 : 0,
                                  color: onTapInputMatierre
                                      ? Colors.white
                                      : Colors.grey.withOpacity(.5),
                                  child: Container(
                                    margin: EdgeInsets.symmetric(horizontal: 5),
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 15),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: TextField(
                                      controller: matierreController,
                                      cursorColor: Colors.grey,
                                      onTap: () {
                                        setState(() {
                                          onTapInputMatierre = true;
                                        });
                                        print("tap ...1");
                                      },
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: 'Quelle matière ?',
                                          icon: Icon(
                                            Icons.search,
                                            color: Colors.grey,
                                          )),
                                    ),
                                  ),
                                ),
                                Card(
                                  elevation: onTapInputMatierre ? 0 : 15,
                                  color: onTapInputMatierre
                                      ? Colors.grey.withOpacity(.5)
                                      : Colors.white,
                                  child: Container(
                                    margin: EdgeInsets.symmetric(horizontal: 5),
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 15),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      // color: Colors.grey,
                                    ),
                                    child: TextField(
                                      onTap: () {
                                        setState(() {
                                          onTapInputMatierre = false;
                                        });
                                        print("tap ...2");
                                      },
                                      cursorColor: Colors.grey,
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: 'Adresse ou quartier ',
                                          icon: Icon(
                                            Icons.place,
                                            color: Colors.grey,
                                          )),
                                      onSubmitted: (value) {
                                        print("Submited Value $value");
                                        setState(() {
                                          Random rnd;
                                          int min = 150000;
                                          int max = 600000;
                                          rnd = new Random();
                                          int r = min + rnd.nextInt(max - min);
                                          formSubmited = true;
                                          _animation = new Tween<double>(
                                            begin: _animation.value,
                                            end: r.toDouble(),
                                          ).animate(CurvedAnimation(
                                            curve: Curves.fastOutSlowIn,
                                            parent: _controller,
                                          ));
                                        });
                                        _controller.forward(from: 0.0);
                                      },
                                    ),
                                  ),
                                ),

                                // Afficheur du gain potentiel de l'utilisateur
                                if (formSubmited)
                                  AnimatedBuilder(
                                    animation: _animation,
                                    builder:
                                        (BuildContext context, Widget child) {
                                      return Container(
                                        color: Colors.white,
                                        child: RichText(
                                          text: TextSpan(
                                            text:
                                                " ${_animation.value.toStringAsFixed(1)}   ",
                                            style: TextStyle(
                                                color: themeColor,
                                                fontSize: 25,
                                                fontWeight: FontWeight.w200),
                                            children: <TextSpan>[
                                              TextSpan(
                                                  text: 'Fr ',
                                                  style: TextStyle(
                                                      color: themeColor,
                                                      fontSize: 30,
                                                      fontWeight:
                                                          FontWeight.bold)),
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DemandePage()));
                      },
                      child: Container(
                        margin: EdgeInsets.only(left: 20, right: 20),
                        height: 40,
                        width: 350,
                        decoration: BoxDecoration(
                            color: themeColor,
                            borderRadius: BorderRadius.circular(50),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black87,
                                  offset: Offset(0.0, 1.5),
                                  blurRadius: 1.5)
                            ]),
                        child: Center(
                          child: Text(
                            "Commencer mon annonce",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  listModule(double sheetItemHeight, context) {
    var item;
    return Container(
        padding: EdgeInsets.only(top: 30, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Possibilités de s'inscrire par :",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 22,
                  fontFamily: 'BAARS'),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        print('esthy');
                      },
                      child: Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                              color: accanceColor.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                              child: Text(
                            'f',
                            style: TextStyle(
                                color: accanceColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 25),
                          ))),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Facebook',
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
                SizedBox(
                  width: 30,
                ),
                Column(
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        print('kiki');
                      },
                      child: Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                            color: accanceColor.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(10)),
                        child: Icon(
                          Icons.mail_outline,
                          color: accanceColor,
                          size: 25,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Email',
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
                SizedBox(
                  width: 30,
                ),
                Column(
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        print('koko');
                      },
                      child: Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                              color: accanceColor.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                              child: Text(
                            'G',
                            style: TextStyle(
                                color: accanceColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 25),
                          ))),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Google',
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 2,
              width: MediaQuery.of(context).size.width,
              color: Colors.grey.withOpacity(0.2),
            )
          ],
        ));
  }

  listMagazine(double sheetItemHeight, context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text(
              "Nos Catégories",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 22,
                  fontFamily: 'BAARS'),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).pushNamed(AllProf.routeName);
            },
            child: Container(
              height: 220,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      margin: EdgeInsets.all(5),
                      height: 170,
                      width: MediaQuery.of(context).size.width / 2.5,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        /*image: DecorationImage(
                                image: AssetImage('assets/images/code.jpg'),
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(
                                    Colors.black38, BlendMode.darken))*/
                      ),
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                              height: 70,
                              width: 100,
                              child:
                                  SvgPicture.asset('assets/images/python.svg')),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            'Informatique',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: 'BAARS',
                                fontSize: 20),
                          )
                          /*Container(
                              margin: EdgeInsets.only(left: 15, top: 60, right: 15),
                              height: 30,
                              width: 100,
                              color: themeColor.withOpacity(0.8),
                              child: Center(
                                child: Text(
                                  'Informatique',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14),
                                ),
                              ),
                            ),*/
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      margin: EdgeInsets.all(5),
                      height: 170,
                      width: MediaQuery.of(context).size.width / 2.5,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        /*image: DecorationImage(
                                image: AssetImage('assets/images/code.jpg'),
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(
                                    Colors.black38, BlendMode.darken))*/
                      ),
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                              height: 70,
                              width: 100,
                              child:
                                  SvgPicture.asset('assets/images/world.svg')),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            'Anglais',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: 'BAARS',
                                fontSize: 20),
                          )
                          /*Container(
                              margin: EdgeInsets.only(left: 15, top: 60, right: 15),
                              height: 30,
                              width: 100,
                              color: themeColor.withOpacity(0.8),
                              child: Center(
                                child: Text(
                                  'Informatique',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14),
                                ),
                              ),
                            ),*/
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      margin: EdgeInsets.all(5),
                      height: 170,
                      width: MediaQuery.of(context).size.width / 2.5,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        /*image: DecorationImage(
                                image: AssetImage('assets/images/code.jpg'),
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(
                                    Colors.black38, BlendMode.darken))*/
                      ),
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                              height: 70,
                              width: 100,
                              child:
                                  SvgPicture.asset('assets/images/papou.svg')),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            'Scolaire',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: 'BAARS',
                                fontSize: 20),
                          )
                          /*Container(
                              margin: EdgeInsets.only(left: 15, top: 60, right: 15),
                              height: 30,
                              width: 100,
                              color: themeColor.withOpacity(0.8),
                              child: Center(
                                child: Text(
                                  'Informatique',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14),
                                ),
                              ),
                            ),*/
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CategoriePage()));
            },
            child: Container(
              margin: EdgeInsets.only(left: 60, right: 60),
              height: 40,
              width: 300,
              decoration: BoxDecoration(
                  color: themeColor,
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black87,
                        offset: Offset(0.0, 1.5),
                        blurRadius: 1.5)
                  ]),
              child: Center(
                child: Text(
                  "Plus de catégories",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
