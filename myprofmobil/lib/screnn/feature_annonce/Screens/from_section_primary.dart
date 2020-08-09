import 'package:flutter/material.dart';
import 'package:myprofmobil/screnn/feature_annonce/components/section_separator.dart';
import 'package:myprofmobil/screnn/feature_annonce/components/section_title.dart';
import 'package:myprofmobil/screnn/feature_annonce/components/stack_pages_route.dart';
import 'package:myprofmobil/screnn/feature_annonce/components/submit_button.dart';
import 'package:myprofmobil/screnn/feature_annonce/form_inputs/multi_selected_chip.dart';
import 'package:myprofmobil/screnn/feature_annonce/form_inputs/text_input.dart';

import '../styles.dart';
import 'form_screen.dart';
import 'from_section_secondary.dart';

class FirstStepAnnonce extends StatefulWidget {
  double pageSize;
  bool isHidden;
  

  FirstStepAnnonce({Key key, this.pageSize, this.isHidden = false})
      : super(key: key);

  @override
  _FirstStepAnnonce createState() => _FirstStepAnnonce();
}

class _FirstStepAnnonce extends State<FirstStepAnnonce> {
  List<String> returnList;
    bool singleCourMode = false;
  bool multiCourMode = false;

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
  List<String> niveaux = [
    "Tous Niveaux",
    "Débutant",
    "Intermedier",
    "Avancé",
    "Expert"
  ];

  @override
  Widget build(BuildContext context) {
    return FormPage(
      pageSizeProportion: widget.pageSize ?? 0.85,
      isHidden: widget.isHidden,
      title: "annonce etape 1",
      children: <Widget>[
        TextInput(
          onValidate: null,
          label: "Specialité",
          helper: "Rechercher votre Specialité",
        ),
        FormSectionTitle("Veuillez clicker sur vos compétences (5maximums)..."),
        MultiSelectedChip(
          competences,
          myReturnList: (myList) {
            setState(() {
              returnList = myList;
            });
          },
        ),
        Separator(),
        FormSectionTitle("Quel de niveaux de formations Pouvez Enseigner ?"),
        MultiSelectedChip(niveaux),
        Separator(),
        FormSectionTitle("Quel type de cours souhaitez-vous donner?"),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,        
              children: <Widget>[
                Flexible(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        singleCourMode = !singleCourMode;
                      });
                    },
                    child: Card(
                      elevation: singleCourMode ? 15 : 0,
                      color: singleCourMode ? Styles.secondaryColor: Styles.darkGrayColor.withOpacity(.3),
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        height: MediaQuery.of(context).size.height / 8,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Icon(Icons.person, color: singleCourMode ? Colors.white : Colors.white),
                            Text('Cours individuel',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Roboto'
                                ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 15),
                Flexible(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        multiCourMode = !multiCourMode;
                      });
                    },
                    child: Card(
                      elevation: multiCourMode ? 15 : 0,
                      color: multiCourMode ? Styles.secondaryColor : Styles.darkGrayColor.withOpacity(.3),
                      child: Container(
                        // alignment: Alignment.center,
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        height: MediaQuery.of(context).size.height / 8,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Icon(Icons.people,color: singleCourMode ? Colors.white : Colors.white),
                            Text('Cours en groupe',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Roboto'),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
        Separator(),
        
        SubmitButton(
          padding: EdgeInsets.symmetric(horizontal: Styles.hzPadding),
          child: Text('Next', style: Styles.submitButtonText),
          onPressed: () => _handleSubmit(context),
        ),
      ],
    );
  }

  void _handleSubmit(BuildContext context) {
    Navigator.push(
      context,
      StackPagesRoute(
        previousPages: [FirstStepAnnonce(pageSize: .85, isHidden: true)],
        enterPage: SecondStepAnnonce(),
      ),
    );
  }

  // Widget _buildOrderSpecialInstructions(BuildContext context) {
  //   String  name = 'Special Instructions';
  //   SharedFormState sharedState = Provider.of<SharedFormState>(context, listen: false);
  //   var values = sharedState.valuesByName;
  //   return TextFormField(
  //     onChanged: (value)=>values[FormKeys.instructions] = value,
  //     initialValue: values.containsKey(FormKeys.instructions)? values[FormKeys.instructions] : "",
  //     style: Styles.inputLabel,
  //     decoration: Styles.getInputDecoration(helper: name),
  //     minLines: 4,
  //     maxLines: 6,
  //   );
  // }
}
