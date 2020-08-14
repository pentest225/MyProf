import 'package:flutter/material.dart';
import 'package:myprofmobil/outils/myStyle.dart';

class ContainerThree extends StatefulWidget {
  @override
  _ContainerThreeState createState() => _ContainerThreeState();
}

class _ContainerThreeState extends State<ContainerThree> {

  bool singleCourMode = false;

  bool multiCourMode = false;

  PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 80,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Informatique",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 28,
                    fontFamily: 'BAARS',
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                width: 5,
              ),
              Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      color: themeColor,
                      borderRadius: BorderRadius.circular(5)),
                  child: Icon(
                    Icons.desktop_mac,
                    size: 20,
                    color: Colors.white,
                  )),
            ],
          ),
          SizedBox(
            height: 60,
          ),
          Text(
            "Quel type de cours souhaitez-vous donner?",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              InkWell(
                onTap: () {
                  setState(() {
                    singleCourMode = !singleCourMode;
                  });
                },
                child: Card(
                  elevation: singleCourMode ? 15 : 0,
                  color: singleCourMode
                      ? themeColor.withOpacity(.5)
                      : bgColor,
                  child: Container(
                    height: 150,
                    width: 160,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5)),
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 15,
                        ),
                        Icon(
                          Icons.person,
                          size: 60,
                          color: singleCourMode
                              ? Colors.white
                              : Color.fromRGBO(17, 122, 139, 1),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Cours individuel',
                          style: TextStyle(
                              color: singleCourMode
                                  ? Colors.white
                                  : accanceColor,
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Roboto'),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    multiCourMode = !multiCourMode;
                  });
                },
                child: Card(
                  elevation: multiCourMode ? 15 : 0,
                  color: multiCourMode
                      ? themeColor.withOpacity(.5)
                      : bgColor,
                  child: Container(
                    height: 150,
                    width: 160,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5)),
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 15,
                        ),
                        Icon(
                          Icons.people,
                          size: 60,
                          color: singleCourMode
                              ? Colors.white
                              : Color.fromRGBO(17, 122, 139, 1),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Cours en groupe',
                          style: TextStyle(
                              color: multiCourMode
                                  ? Colors.white
                                  : accanceColor,
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Roboto'),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 70,
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  child: Container(
                    width: 150,
                    height: 40.0,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            Colors.deepPurple,
                            Color.fromRGBO(133, 136, 241, 1)
                          ]),
                    ),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {
                          _controller.previousPage(
                              duration: Duration(milliseconds: 300),
                              curve: Curves.ease);
                        },
                        child: Center(
                          child: Text(
                            'Retour',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 16),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  child: Container(
                    width: 150,
                    height: 40.0,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            Colors.deepPurple,
                            Color.fromRGBO(133, 136, 241, 1)
                          ]),
                    ),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {
                          _controller.nextPage(
                              duration: Duration(milliseconds: 300),
                              curve: Curves.ease);
                        },
                        child: Center(
                          child: Text(
                            'Suivant',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 16),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
