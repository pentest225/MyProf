import 'package:flutter/material.dart';

class Suivant extends StatefulWidget {

  final Function(List<String>) onSelectionChanged;
  Suivant({
    this.onSelectionChanged
});

  @override
  _SuivantState createState() => _SuivantState();
}

class _SuivantState extends State<Suivant> {

  PageController controller = PageController();

  List<String> selectedChoices = List();

  List<String> specialite = [
    'Programmation',
    'Initiation Informatique',
    'Bureautique',
    'Photoshop',
    'Graphisme',
    'Word',
    'Powerpoint',
    'Excel',
    'Animation 3D',
    'Base de donnée',
  ];

  List<String> competences = [
    'JavaScript',
    'Python',
    'Html',
    'Intelligence artificielle',
    'Css',
    'PostgreSql',
    'Visual basic',
    'Flutter',
    'Golang',
    'PHP',
  ];

 /* _buildChoiceList() {
    List<Widget> choices = List();
    specialite.forEach((item) {
      choices.add(Container(
        padding: const EdgeInsets.all(2.0),
        child: ChoiceChip(
          label: Text(item),
          selected: selectedChoices.contains(item),
          onSelected: (selected) {
            setState(() {
              selectedChoices.contains(item)
                  ? selectedChoices.remove(item)
                  : selectedChoices.add(item);
              widget.onSelectionChanged(selectedChoices); // +added
            });
          },
        ),
      ));
    });
    return choices;
  }*/

  @override
  Widget build(BuildContext context) {
    var item;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(133, 136, 241, 1),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white,),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('MyProfs'),
        centerTitle: true,
        elevation: 0,
      ),
      body: PageView(
        controller: controller,
        physics: BouncingScrollPhysics(),
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Informatique",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black87, fontSize: 28, fontFamily: 'BAARS', fontWeight: FontWeight.w700),
                      ),
                      SizedBox(width: 5,),
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(133, 136, 241, 1),
                            borderRadius: BorderRadius.circular(5)),
                        child: Icon(Icons.desktop_mac, size: 20, color: Colors.white,)
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Text(
                    "Veuillez clicker sur votre spécialité...",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black54, fontSize: 18, fontFamily: 'Roboto', fontWeight: FontWeight.w700),
                  ),
                  SizedBox(height: 20,),
                  Wrap(
                    children: <Widget>[
                      for (item in specialite) Padding(
                          padding: const EdgeInsets.all(8.0),
                          child:   InkWell(
                            onTap: () {
                             print('esthy');
                            },
                            child:   Chip(
                              label: Text('$item'),
                              labelStyle: TextStyle(
                                  color: Colors.white, fontSize: 15, fontWeight: FontWeight.w600
                              ),
                              backgroundColor: Color.fromRGBO(133, 136, 241, 1).withOpacity(0.8),
                            ),
                          )
                      )
                    ],
                  ),
                  SizedBox(height: 100,),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      child: Container(
                        width:  250,
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
                            onTap: () {},
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
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Informatique",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black87, fontSize: 28, fontFamily: 'BAARS', fontWeight: FontWeight.w700),
                      ),
                      SizedBox(width: 5,),
                      Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(17, 122, 139, 1),
                              borderRadius: BorderRadius.circular(5)),
                          child: Icon(Icons.desktop_mac, size: 20, color: Colors.white,)
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Text(
                    "Veuillez clicker sur vos compétences (5maximums)...",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black54, fontSize: 18, fontFamily: 'Roboto', fontWeight: FontWeight.w700),
                  ),
                  SizedBox(height: 20,),
                  Wrap(
                    children: <Widget>[
                      for (item in competences) Padding(
                          padding: const EdgeInsets.all(8.0),
                          child:   InkWell(
                            onTap: () {
                              print('esthy');
                            },
                            child:   Chip(
                              label: Text('$item'),
                              labelStyle: TextStyle(
                                  color: Colors.white, fontSize: 15, fontWeight: FontWeight.w600
                              ),
                              backgroundColor: Color.fromRGBO(17, 122, 139, 1).withOpacity(0.8),
                            ),
                          )
                      )
                    ],
                  ),
                  SizedBox(height: 100,),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      child: Container(
                        width:  250,
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
                            onTap: () {},
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
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: Column(
              children: <Widget>[
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Informatique",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black87, fontSize: 28, fontFamily: 'BAARS', fontWeight: FontWeight.w700),
                    ),
                    SizedBox(width: 5,),
                    Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(17, 122, 139, 1),
                            borderRadius: BorderRadius.circular(5)),
                        child: Icon(Icons.desktop_mac, size: 20, color: Colors.white,)
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Text(
                  "Quel type de cours souhaitez-vous donner?",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black, fontSize: 18, fontFamily: 'Roboto', fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                  Container(
                    height: 150,
                    width: 160,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(5)
                    ),
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 15,
                        ),
                        Icon(Icons.person, size: 60, color: Color.fromRGBO(17, 122, 139, 1),),
                        SizedBox(height: 10,),
                        Text('Cours individuel', style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w600, fontFamily: 'Roboto'
                        ),)
                      ],
                    ),
                  ),
                    Card(
                      child: Container(
                        height: 150,
                        width: 160,
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(5)
                        ),
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                              height: 15,
                            ),
                            Icon(Icons.people, size: 60, color: Color.fromRGBO(17, 122, 139, 1),),
                            SizedBox(height: 10,),
                            Text('Cours en groupe', style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600, fontFamily: 'Roboto'
                            ),)
                          ],
                        ),
                      ),
                    ),
                ],),
                SizedBox(height: 25,),
                Text(
                  "Quel ?",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black, fontSize: 18, fontFamily: 'Roboto', fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
