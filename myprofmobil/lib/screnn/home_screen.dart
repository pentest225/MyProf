import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:myprofmobil/outils/myStyle.dart';
import 'package:myprofmobil/screnn/profPage.dart';
import 'package:myprofmobil/screnn/verify.dart';
import 'package:sprinkle/SprinkleExtension.dart';
import 'package:myprofmobil/manager/feature_toggle_anim.dart';



class HomeScreen extends StatelessWidget {
  static const rooteName = '/home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff8489f0),
        elevation: 0,
        leading: Container(
            margin: EdgeInsets.only(left: 25),
            child: IconButton(
              icon: Icon(Icons.home),
              color: Colors.white,
              onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (_)=> Verify())),
            )),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 10),
            margin: EdgeInsets.only(right: 25),
            child: Text('MyProf', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
          )
        ],
      ),
      backgroundColor: Color(0xff8489f0),
      body: LayoutStarts(),
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
            child: SvgPicture.asset("assets/images/math.svg", width: MediaQuery.of(context).size.width/2.1,)
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

    fadeAnimation = Tween(begin: 0.0, end: 1.0).animate(fadeController);
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
    final manager = context.fetch<StateBloc>();

    return StreamBuilder<Object>(
        initialData: StateProvider().isAnimating,
        stream: manager.animationStatus,
        builder: (context, snapshot) {
          snapshot.data 
          ? forward() 
          : reverse();
          return ScaleTransition(
            scale: scaleAnimation,
            child: FadeTransition(
              opacity: fadeAnimation,
              child: CarDetails(),
            ),
          );
        });
  }
}

class CarDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(left: 30),
          child: _carTitle(),
        ),
        SizedBox(height: 15),
        Container(
          width: double.infinity,
          child: SearchCard(),
        )
      ],
    ));
  }

  _carTitle() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        RichText(
          text: TextSpan(
              style: TextStyle(color: Colors.white, fontSize: 38, fontFamily: 'BAARS'),
              children: [
                TextSpan(text: "Trouvez le Professeur"),
                TextSpan(text: "\n"),
                TextSpan(
                    text: "Parfait",
                    style: TextStyle(fontWeight: FontWeight.w700, fontFamily: 'BAARS')),
              ]),
        ),
        SizedBox(height: 10),
        // RichText(
        //   text: TextSpan(style: TextStyle(fontSize: 16), children: [
        //     TextSpan(
        //         text: "10\$",
        //         style: TextStyle(color: Colors.grey[20])),
        //     TextSpan(
        //       text: " / day",
        //       style: TextStyle(color: Colors.grey),
        //     )
        //   ]),
        // ),
      ],
    );
  }
}

class SearchCard extends StatefulWidget {
  @override
  _SearchCardlState createState() => _SearchCardlState();
}

class _SearchCardlState extends State<SearchCard> {
  

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[

          Container(
            height: 50,
            width: MediaQuery.of(context).size.width / 1.1,
            decoration: BoxDecoration(
               color: Color(0xfff1f1f1),
               borderRadius: BorderRadius.all(Radius.circular(10))
            ),
            child: Row(
              children: <Widget>[
                Flexible(
                  flex: 4,
                  child: Container(
                    padding: EdgeInsets.only(top: 3, left: 10),
                    alignment: Alignment.center, child: Row(
                    children: [
                      Flexible(child: Icon(Icons.search, size: 22,)),
                      Flexible(
                        flex: 2,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "essayer Maths, l'informatique"
                          ),
                        ),
                      ),
                    ],
                  ))),
                Flexible(
                  flex: 2,
                  child: Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.all(4),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    child: Text("Rechercher", style: TextStyle(color: Colors.white),),
                    decoration: BoxDecoration(
                      color: Colors.pink.withOpacity(.8),
                      borderRadius: BorderRadius.all(Radius.circular(5))
                      
                    ),
                  )),
              ]
            ),
          ),


          
  
        ],
      ),
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
    final manager = context.fetch<StateBloc>();
    controller.forward();
    manager.toggleAnimation();
  }

  reverseAnimation() {
    final manager = context.fetch<StateBloc>();
    controller.reverse();
    manager.toggleAnimation();
  }

  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: animation.value,
      left: 0,
      child: GestureDetector(
        onTap: () {
           controller.isCompleted 
           ? reverseAnimation() 
           : forwardAnimation();
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

class SheetContainer extends StatelessWidget {

  List<String> matiere = [
    'Cuisine',
    'Informatique',
    'Musique',
    'Scolaire'
  ];

  @override
  Widget build(BuildContext context) {
    double sheetItemHeight = 110;
    return Container(
      padding: EdgeInsets.only(top: 25),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
          color: Color(0xfff1f1f1)),
      child: Column(
        children: <Widget>[
          drawerHandle(),
          Expanded(
            flex: 1,
            child: ListView(
              children: <Widget>[
                offerDetails(sheetItemHeight),
                listModule(sheetItemHeight, context),
                // listModule(sheetItemHeight),
                offerDetails(sheetItemHeight),
                listMagazine(sheetItemHeight, context),
                SizedBox(height: 200),
              ],
            ),
          )
        ],
      ),
    );
  }

  drawerHandle() {
    return Container(
      margin: EdgeInsets.only(bottom: 25),
      height: 3,
      width: 65,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Color(0xffd9dbdb)),
    );
  }

  specifications(double sheetItemHeight) {
    return Container(
      padding: EdgeInsets.only(top: 15, left: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Specifications",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w700,
              fontSize: 18,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 15),
            height: sheetItemHeight,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              itemBuilder: (context, index) {
                return Text('hi');
              },
            ),
          )
        ],
      ),
    );
  }

  offerDetails(double sheetItemHeight) {
    return Container(
      padding: EdgeInsets.only(top: 15, left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Apprenez en toute confiance",
            style: TextStyle(
              color: accanceColor,
              fontWeight: FontWeight.w700,
              fontSize: 18,
            ),
          ),
          SizedBox(height: 5,),
          Row(children: [
            Flexible(child: Container(
              margin: EdgeInsets.all(3),
              height: sheetItemHeight,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(.3),
                borderRadius: BorderRadius.all(Radius.circular(20))
              ),
            )),
            Flexible(child: Container(
              margin: EdgeInsets.all(3),
              height: sheetItemHeight,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(.3),
                borderRadius: BorderRadius.all(Radius.circular(20))
              ),
            )),
            Flexible(child: Container(
              margin: EdgeInsets.all(3),
              height: sheetItemHeight,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(.3),
                borderRadius: BorderRadius.all(Radius.circular(20))
              ),
            ))
          ],)
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
            "Apprenez ce que vous voulez",
            style: TextStyle(
              color: accanceColor,
              fontWeight: FontWeight.w700,
              fontSize: 18,
            ),
          ),
          SizedBox(height: 5,),
         InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Profspage()));
            },
            child: Container(
              height: MediaQuery.of(context).size.height / 4,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                ...List.generate(5, (index) =>Container(
                  margin: EdgeInsets.all(5),
                  height: sheetItemHeight,
                  width: sheetItemHeight,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(.3),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    image: DecorationImage(
                      image: AssetImage('assets/images/books.jpg'),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken)
                    )
                  ),
                  child: Center(
                    child: Text('Informatique', style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold, fontSize: 17
                    ),),
                  ),
                ))
              ],),
            ),
          )
        ],
      ),
    );
  }

    listMagazine(double sheetItemHeight, context) {
    return Container(
      padding: EdgeInsets.only(top: 15, left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Le Magazine Myprof",
            style: TextStyle(
              color: accanceColor,
              fontWeight: FontWeight.w700,
              fontSize: 18,
            ),
          ),
           ...List.generate(5, (index) =>ListTile(
                  title: Text('Confinement education $index'),
                  subtitle: Text('1200 article  selectionner $index'),
                  leading: Container(
                  margin: EdgeInsets.all(5),
                  height: sheetItemHeight,
                  width: 70,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(.3),
                   image: DecorationImage(
                     image: AssetImage('assets/images/architecture.jpg'),
                     fit: BoxFit.cover
                   )
                  ),
                ),
              ))

        ],
      ),
    );
  }
}
