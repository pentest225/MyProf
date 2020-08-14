import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:myprofmobil/outils/myStyle.dart';
import 'package:myprofmobil/providers/annonces/annonces.dart';
import 'package:myprofmobil/providers/annonces/models/annonce_model.dart';
import 'package:myprofmobil/screnn/all_prof.dart';
import 'package:myprofmobil/screnn/homeScreen2.dart';
import 'package:myprofmobil/widgets/Annonce/CategorieAnnonce.dart';
import 'package:provider/provider.dart';


//PAGE POUR LISTER TOUTE LES CATEGORIE DE FORMATION 
class CategoriePage extends StatefulWidget {

  static const routeName = '/categorie';

  @override
  _CategoriePageState createState() => _CategoriePageState();
}

class _CategoriePageState extends State<CategoriePage> {
  TextEditingController _catController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    List<CategorieAnnonce> _allCat = Provider.of<Annonces>(context).items.toList();

    return Scaffold(
      body: Container(
        height: deviceHeight,
        width: deviceWidth,
        color: fondcolor,
        child: SingleChildScrollView(
          child: Stack(
            children: <Widget>[
              // Header sECTIONS 
              Container(
                height: deviceHeight/1.8,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(100),
                      bottomRight: Radius.circular(100),
                    ),
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [themeColor, Colors.orangeAccent]
                    )
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: 40,),
                      Row(
                        children: <Widget>[
                          InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Icon(Icons.arrow_back, color: Colors.white,)),
                        ],
                      ),
                      SizedBox(height: 30,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('Catégorie', style: TextStyle(
                              fontFamily: 'BAARS', fontWeight: FontWeight.bold, fontSize: 40, color: Colors.white
                          ),),
                          SizedBox(width: 5,),
                          Icon(Icons.school, size: 40, color: accanceColor,)
                        ],
                      ),
                      SizedBox(height: 50,),
                      Card(
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child:  Container(
                          margin: EdgeInsets.only(left: 20),
                          padding: EdgeInsets.only(left: 15),
                          height: 50,
                          width: 320,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: TextField(
                            controller: _catController,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Recherche',
                                icon: Icon(Icons.search, size: 18, color: themeColor,)
                            ),
                            onChanged: (value){
                              
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 40,),
              Container(
                margin: EdgeInsets.only(top: 300, left: 10),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => AllProf()));
                  },
                  child: Wrap(
                    //spacing: 20,
                    children: <Widget>[
                      ..._allCat.map((cat)=>CategorieAnnonceWidget(cat)).toList()
            ]
                  ),
                ),
              ),
              SizedBox(height: 40,),
              SizedBox(height: 20,),
            ],
          ),
        ),
      ),
    );
  
  }
}
