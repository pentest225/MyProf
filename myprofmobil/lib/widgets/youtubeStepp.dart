import 'package:flutter/material.dart';
import 'package:myprofmobil/outils/myStyle.dart';

class YoutubeLink extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Ajouter une vidéo Youtbe",
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 25,
                    fontFamily: 'BAARS',
                    fontWeight: FontWeight.w700),
              ),
              Text(
                "( Optionel )",
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: Text(
                  "Pour donné l'envie a vos prochain éléve de suivre cette annonce nous sugeront de faire une belle vidéos youtube pour donné un bref appercue de votre offre  ",
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(left: 20),
                      height: MediaQuery.of(context).size.height / 12,
                      width: MediaQuery.of(context).size.width / 1.8,
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.1),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          )),
                      child: Center(
                        child: TextField(
                          keyboardType: TextInputType.text,
                          cursorColor: Colors.grey,
                          decoration: InputDecoration(
                              hintText: 'https://www.youtube.com/watch?v=...',
                              border: InputBorder.none),
                        ),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 12,
                      width: MediaQuery.of(context).size.width / 4,
                      decoration: BoxDecoration(
                          color: accanceColor,
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(10),
                            topRight: Radius.circular(10),
                          )),
                      child: Center(
                        child: Text(
                          'Https',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
