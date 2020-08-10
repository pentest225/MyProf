import 'package:flutter/material.dart';
import 'package:myprofmobil/outils/myStyle.dart';
import 'package:myprofmobil/widgets/socialBtn.dart';

class FinalStep extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
     
     
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Felicitations votre annonce est complète !!!",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 25,
                  fontFamily: 'BAARS',
                  fontWeight: FontWeight.w700),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Container(
              padding: EdgeInsets.all(12),
              child: Text(
                "Dernière petite chose : enrichissez la avec des recommandations d'amis, de collègues ou d'anciens élèves..."
                "Plus vous en avez, plus elle sera appreciée et mieux elle sera positionnée .",
                style: TextStyle(color: Colors.black54, fontSize: 18),
              )),
          SizedBox(
            height: 16,
          ),
          Container(
            height: MediaQuery.of(context).size.height / 1,
            width: MediaQuery.of(context).size.width / 1.1,
            decoration: BoxDecoration(
                color: Colors.white,
                ),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                      color: themeColor,
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage('assets/images/books.jpg'),
                          fit: BoxFit.cover)),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'DAGOUAGA',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 18,
                  width: MediaQuery.of(context).size.width / 4,
                  decoration: BoxDecoration(
                      color: accanceColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                      child: Text(
                    '100frs/h',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Center(
                      child: Text(
                    'Simplissime, demandez des recommandations à vos amis via :',
                    style: TextStyle(
                        fontFamily: 'BAARS',
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black54),
                  )),
                ),
                SocialBtn("SMS", Icons.message, Colors.green),
                SocialBtn("Mail", Icons.mail, Colors.pink),
                InkWell(
                  onTap: () {},
                  child: Container(
                    margin: EdgeInsets.only(top: 10),
                    padding: EdgeInsets.only(left: 10),
                    height: 50,
                    width: MediaQuery.of(context).size.width / 1.2,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(59, 89, 152, 1),
                        borderRadius: BorderRadius.circular(100)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'f',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 18),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'Facebook',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontFamily: 'BAARS',
                              fontWeight: FontWeight.w700),
                        )
                      ],
                    ),
                  ),
                ),
                SocialBtn("Messenger", Icons.message,
                    Color.fromRGBO(93, 153, 251, 1)),
                InkWell(
                  onTap: () {},
                  child: Container(
                    margin: EdgeInsets.only(top: 10),
                    padding: EdgeInsets.only(left: 10),
                    height: 50,
                    width: MediaQuery.of(context).size.width / 1.2,
                    decoration: BoxDecoration(
                        color: accanceColor,
                        borderRadius: BorderRadius.circular(100)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          height: 18,
                          width: 18,
                          color: Colors.white,
                          child: Center(
                              child: Text(
                            'in',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: accanceColor,
                                fontSize: 15),
                          )),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Linkedin',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontFamily: 'BAARS',
                              fontWeight: FontWeight.w700),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
