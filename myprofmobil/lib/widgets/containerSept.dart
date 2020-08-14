import 'package:flutter/material.dart';

class Containersept extends StatefulWidget {
  @override
  _ContainerseptState createState() => _ContainerseptState();
}

class _ContainerseptState extends State<Containersept> {

  PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Column(
        children: <Widget>[
          SizedBox(height: 120,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Coordonnées pour vous contacter",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black87, fontSize: 25, fontFamily: 'BAARS', fontWeight: FontWeight.w700),
            ),
          ),
          SizedBox(height: 20,),
          Container(
            padding: EdgeInsets.only(left: 20),
            height: MediaQuery.of(context).size.height/12,
            width: MediaQuery.of(context).size.width/1.2,
            decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.1),
                borderRadius: BorderRadius.circular(5)
            ),
            child: Center(
              child: TextField(
                keyboardType: TextInputType.number,
                cursorColor: Colors.grey,
                decoration: InputDecoration(
                    hintText: 'Numéro de téléphone',
                    border: InputBorder.none
                ),
              ),
            ),
          ),
          SizedBox(height: 10,),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  child: Container(
                    width:  150,
                    height: 40.0,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [Colors.deepPurple, Color.fromRGBO(133, 136, 241, 1)]
                      ),
                    ),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {
                          _controller.previousPage(duration: Duration(milliseconds: 300), curve:Curves.ease);
                        },
                        child: Center(
                          child: Text('Retour', style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w700, fontSize: 16
                          ),),
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
                    width:  150,
                    height: 40.0,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [Colors.deepPurple, Color.fromRGBO(133, 136, 241, 1)]
                      ),
                    ),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {
                          _controller.nextPage(duration: Duration(milliseconds: 300), curve:Curves.ease);
                        },
                        child: Center(
                          child: Text('Suivant', style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w700, fontSize: 16
                          ),),
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
