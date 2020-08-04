import 'package:flutter/material.dart';
import 'package:myprofmobil/manager/feature_toggle_anim.dart';
import 'package:myprofmobil/outils/myStyle.dart';
import 'package:myprofmobil/services/calendarServices.dart';
import 'package:myprofmobil/widgets/AnnonceWidget.dart';
import 'package:myprofmobil/widgets/dayContainer.dart';
import 'package:provider/provider.dart';
class BottomCard extends StatefulWidget {
  @override
  _BottomCardState createState() => _BottomCardState();
}

class _BottomCardState extends State<BottomCard> with TickerProviderStateMixin {
  AnimationController _controller;
  CalendarServices mySerice = CalendarServices();
  int numberRow = 2;
  List<DateTime> currenteWeek = [];

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
    Provider.of<ToggleBottomSheet>(context,listen: false).toggleAgandaAnimating();
  }

  reverseAnimation() {
    controller.reverse();
    Provider.of<ToggleBottomSheet>(context,listen: false).toggleAgandaAnimating();
  }

  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    currenteWeek = mySerice.currentWeek();
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
        child: Container(
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.only(top: 35),
          margin: EdgeInsets.symmetric(horizontal: 2),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.9),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35))),
          child: ListView(
            children: <Widget>[
              // Divider Container
              Center(
                child: Container(
                  margin: EdgeInsets.only(bottom: 25),
                  height: 3,
                  width: 65,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: themeColor),
                ),
              ),

              Column(
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 70,
                    margin: EdgeInsets.only(left: 20),
                    width: MediaQuery.of(context).size.width,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: currenteWeek.length,
                        itemBuilder: (context, i) {
                          return DayContainer(currenteWeek[i]);
                        }),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      children: <Widget>[
                        Text(
                          "Today's Shedule",
                          style: TextStyle(
                              color: Colors.black,
                              // fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  PageDisc(),
                  SizedBox(height: 20),
                  PageDisc(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
