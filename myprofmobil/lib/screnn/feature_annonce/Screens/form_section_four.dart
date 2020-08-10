import 'dart:io';

import 'package:flutter/material.dart';
import 'package:myprofmobil/screnn/feature_annonce/Screens/from_section_primary.dart';
import 'package:myprofmobil/screnn/feature_annonce/Screens/from_section_third.dart';
import 'package:myprofmobil/screnn/feature_annonce/components/button_upload_photo.dart';
import 'package:myprofmobil/screnn/feature_annonce/components/section_separator.dart';
import 'package:myprofmobil/screnn/feature_annonce/components/section_title.dart';
import 'package:myprofmobil/screnn/feature_annonce/components/stack_pages_route.dart';
import 'package:myprofmobil/screnn/feature_annonce/components/submit_button.dart';
import 'package:myprofmobil/screnn/feature_annonce/form_inputs/multi_selected_chip.dart';
import 'package:myprofmobil/screnn/feature_annonce/form_inputs/text_input.dart';
import 'package:flutter/scheduler.dart' show timeDilation;

import '../styles.dart';
import 'form_screen.dart';
import 'from_section_secondary.dart';

class FourStepAnnonce extends StatefulWidget {
  double pageSize;
  bool isHidden;

  FourStepAnnonce({Key key, this.pageSize, this.isHidden = false})
      : super(key: key);

  @override
  _FirstStepAnnonce createState() => _FirstStepAnnonce();
}

class _FirstStepAnnonce extends State<FourStepAnnonce> {
  File _image;
  bool _loadImage = false;
  String _chosenValue = '1 H';
  bool isOffert = true;
  bool isDomicile = false;
  bool isStudent = true;
  bool isWebcam = false;

  @override
  Widget build(BuildContext context) {
    return FormPage(
      pageSizeProportion: widget.pageSize ?? 0.85,
      isHidden: widget.isHidden,
      title: "annonce etape 3",
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FormSectionTitle("Ou se deroule les cours"),
            Container(
              padding: EdgeInsets.only(top: 10),
              color: Colors.white.withOpacity(.5),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(color: Colors.black12, blurRadius: 8)
                      ],
                      border: Border.all(color: Color(0xffd4d4d4)),
                      borderRadius: BorderRadius.all(
                        Radius.circular(7),
                      ),
                    ),
                    child: CheckboxListTile(
                      title:
                          const Text("je peux encadrer l'élève à mon domicile"),
                      value: isDomicile,
                      onChanged: (bool value) {
                        setState(() {
                          isDomicile = value;
                        });
                      },
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(color: Colors.black12, blurRadius: 8)
                      ],
                      border: Border.all(color: Color(0xffd4d4d4)),
                      borderRadius: BorderRadius.all(
                        Radius.circular(7),
                      ),
                    ),
                    child: CheckboxListTile(
                      title: const Text("je peux me déplacer chez l'élève"),
                      value: isStudent,
                      onChanged: (bool value) {
                        setState(() {
                          isStudent = value;
                        });
                      },
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(color: Colors.black12, blurRadius: 8)
                      ],
                      border: Border.all(color: Color(0xffd4d4d4)),
                      borderRadius: BorderRadius.all(
                        Radius.circular(7),
                      ),
                    ),
                    child: CheckboxListTile(
                      title: const Text("je peux donner des cours par webcam"),
                      value: timeDilation != .3,
                      onChanged: (bool value) {
                        setState(() {
                          timeDilation = value ? 3.0 : .3;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ), //
        Separator(),
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          FormSectionTitle("Votre tarrif et votre numéro ?"),
          Row(
            children: <Widget>[
              Flexible(
                child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(left: 20),
                  height: MediaQuery.of(context).size.height / 12,
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.1),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(7),
                        bottomLeft: Radius.circular(7),
                      )),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    cursorColor: Colors.grey,
                    decoration: InputDecoration(
                        hintText: '2500', border: InputBorder.none),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                height: MediaQuery.of(context).size.height / 12,
                width: MediaQuery.of(context).size.width / 4,
                decoration: BoxDecoration(
                    color: Styles.accanceColor,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(10),
                      topRight: Radius.circular(10),
                    )),
                child: Text(
                  'Frs/h',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ]),

        Separator(),

        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          FormSectionTitle("Offrir Son premier Cour "),

          // Container(
          //     padding: EdgeInsets.all(20),
          //     child: Text(
          //       "Offrir son premier cour histoir de donné confiance ,bien possé les bases du cour avec votre éleve ",
          //       style: TextStyle(color: Colors.grey, fontSize: 13),
          //     )),
          Container(
            alignment: Alignment.topLeft,
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 8)],
                border: Border.all(color: Color(0xffd4d4d4)),
                borderRadius: BorderRadius.all(
                  Radius.circular(7),
                )),
            child: CheckboxListTile(
              title: const Text(
                  "Oui je souhaite offrir ma premierre sceance de cour"),
              value: isOffert,
              onChanged: (bool value) {
                setState(() {
                  isOffert = value;
                });
              },
            ),
          ),
          SizedBox(height: 10),
          Container(
            // padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Flexible(
                  child: Container(
                    alignment: Alignment.center,
                    height: MediaQuery.of(context).size.height / 12,
                    decoration: BoxDecoration(
                        // color: Styles.accanceColor,
                        borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                    )),
                    child: Text(
                      "premier cour offert pour ",
                      style: TextStyle(color: Styles.secondaryColor),
                    ),
                  ),
                ),
                Flexible(
                  child: Container(
                    width: MediaQuery.of(context).size.width / 4,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(color: Colors.black12, blurRadius: 8)
                        ],
                        border: Border.all(color: Color(0xffd4d4d4)),
                        borderRadius: BorderRadius.all(
                          Radius.circular(7),
                        )),
                    child: Center(
                      child: DropdownButton<String>(
                        value: _chosenValue,
                        // underline: Container(), // this is the magic
                        items: <String>[
                          '00 H',
                          '1 H',
                          '45 M',
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: TextStyle(
                                  color: Styles.accanceColor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          );
                        }).toList(),
                        onChanged: (String value) {
                          setState(() {
                            _chosenValue = value;
                          });
                        },
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          FormSectionTitle("Ajouter une Péssision par rapport au prix"),
          TextFormField(
            maxLines: 8,
            minLines: 4,
            style: Styles.inputLabel,
            decoration: Styles.getInputDecoration(
                helper:
                    "..."),
          ),
        ]),

        SubmitButton(
          padding: EdgeInsets.symmetric(horizontal: Styles.hzPadding),
          child: Text('Next', style: Styles.submitButtonText),
          onPressed: () => _handleSubmit(context),
        ),
      ],
    );
  }

  void _handleSubmit(BuildContext context) {
    // if (_formKey.currentState.validate() && formCompletion == 1) {

    Navigator.push(
        context,
        StackPagesRoute(previousPages: [
          FirstStepAnnonce(isHidden: true, pageSize: .85),
          SecondStepAnnonce(isHidden: true, pageSize: .85),
          FourStepAnnonce(
            isHidden: true,
            pageSize: .85,
          ),
        ], enterPage: ThirdStepAnnonce()));
  }
  // void _handleSubmit(BuildContext context) {
  //   Navigator.push(
  //     context,
  //     StackPagesRoute(
  //       previousPages: [FirstStepAnnonce(pageSize: .85, isHidden: true)],
  //       enterPage: SecondStepAnnonce(),
  //     ),
  //   );
  // }
}
