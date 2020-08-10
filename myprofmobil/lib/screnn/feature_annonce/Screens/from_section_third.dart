import 'dart:io';
import 'package:flutter/material.dart';
import 'package:myprofmobil/outils/myStyle.dart';
import 'package:myprofmobil/screnn/dash_user.dart';
import 'package:myprofmobil/screnn/feature_annonce/Screens/from_section_primary.dart';
import 'package:myprofmobil/screnn/feature_annonce/Screens/from_section_secondary.dart';
import 'package:myprofmobil/screnn/feature_annonce/components/button_upload_diplome.dart';
import 'package:myprofmobil/screnn/feature_annonce/components/button_upload_photo.dart';
import 'package:myprofmobil/screnn/feature_annonce/components/section_separator.dart';
import 'package:myprofmobil/screnn/feature_annonce/components/section_title.dart';
import 'package:myprofmobil/screnn/feature_annonce/components/stack_pages_route.dart';
import 'package:myprofmobil/screnn/feature_annonce/components/submit_button.dart';
import 'package:myprofmobil/screnn/feature_annonce/form_inputs/text_input.dart';
import 'package:flutter/scheduler.dart' show timeDilation;
import 'form_screen.dart';
import '../styles.dart';

class ThirdStepAnnonce extends StatefulWidget {
  final double pageSize;

  const ThirdStepAnnonce({Key key, this.pageSize}) : super(key: key);
  @override
  _ThirdStepAnnonceState createState() => _ThirdStepAnnonceState();
}

class _ThirdStepAnnonceState
    extends State<ThirdStepAnnonce> /*with FormMixin*/ {
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    // sharedState = Provider.of<SharedFormState>(context, listen: false);
    super.initState();
  }

  File _image;
  bool _loadImage = false;
  String _chosenValue = '1 H';
  bool isOffert = true;
  bool isDomicile = false;
  bool isStudent = true;
  bool isWebcam = false;
  // final picker = ImagePicker();
  Future getImageFromFils() async {
    try {
      setState(() {
        _loadImage = true;
      });
      // final pickedFile = await picker.getImage(source: ImageSource.gallery);
      // _image = File(pickedFile.path);
      print("Image From Galerie ${_image}");
      setState(() {
        _loadImage = false;
      });
    } catch (error) {
      print("Error to get Image from fils ${error.toString()}");
    }
  }

  @override
  Widget build(BuildContext context) {
    print("Rebuilding payments @ ${DateTime.now().millisecondsSinceEpoch}");
    return FormPage(
      formKey: _formKey,
      pageSizeProportion: widget.pageSize ?? 0.85,
      title: 'Soumettre',
      children: [
        // TextInput(
        //     key: ValueKey(FormKeys.ccName), label: 'Card Name', helper: 'Cardholder Name', onValidate: onItemValidate, onChange: (String key, String value){
        //           print(key);
        //          print(value);
        //     },),
        // Separator(),
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
        ]),

        // _builProfil(),
        Separator(),
        Container(
            alignment: Alignment.topLeft,
            child: FormSectionTitle('Liens chaine Youtube')),
        _buildUrlChaineYoutube(),
        Separator(),
        //  Container(
        //    alignment: Alignment.topLeft,
        //    child: FormSectionTitle('Uploader Diplome, curriculome vitae ou certificat')),
        //   Container(
        //     alignment: Alignment.topLeft,
        //     width: MediaQuery.of(context).size.width / 3,
        //     height: 40,
        //     child: ButtonUploadDiplome(title: "upload", onPressed: (){},)),
        //   Separator(),
        Container(
          color: accanceColor,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                FlatButton(
                  child: Text('Soumetre 1', style: Styles.submitButtonText),
                  onPressed: () {
                    print("Soumissions");
                    Navigator.of(context).pop();
                    Navigator.of(context).pushNamed(UserDash.routeName);
                  },
                ),
                FlatButton(
                  child: Text('Complete ', style: Styles.submitButtonText),
                  onPressed: () =>
                      Navigator.of(context).pushNamed(UserDash.routeName),
                ),
              ],
            ),
          ),
        )
        // _buildSubmitButton()
      ],
    );
  }

  Widget _buildUrlChaineYoutube() => TextInput(
      onValidate: null,
      helper: 'https://www.youtube.com',
      isRequired: false,
      onChange: null);

  Widget _builProfil() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Stack(
          overflow: Overflow.visible,
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width * .3,
              height: 135,
              child: Icon(
                Icons.person,
                size: 50,
              ),
              decoration: BoxDecoration(
                border: Border.all(color: Styles.grayColor),
                borderRadius: BorderRadius.circular(4),
                //  image: DecorationImage(image: AssetImage('images/plant_header_background.png'))
              ),
            ),
            Positioned(
                top: -10,
                right: -10,
                child: Container(
                  width: 24,
                  height: 24,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Styles.grayColor,
                  ),
                  child: Center(child: Text('', style: Styles.imageBatch)),
                )),
          ],
        ),
        SizedBox(width: 36),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Votre\nPlus \nBeau Profil', style: Styles.productName),
            ButtonUpload(title: "Upload", onPressed: () {})
          ],
        )
      ],
    );
  }

  onItemValidate(String key, bool isValid, {String value}) {
    print("////////////////////////");
    print(key);
    print(isValid);
    print(value);
  }

  // @override
  // void onItemValidate(String key, bool isValid, {String value}) {
  //   validInputsMap[key] = isValid;
  //   values[key] = value;

  //   Future.delayed(
  //     Duration(milliseconds: 500),
  //     () {
  //       if (this.mounted)
  //         setState(() {
  //           formCompletion = super.countValidItems() / validInputsMap.length;
  //           if (formCompletion == 1) isFormErrorVisible = false;
  //         });
  //     },
  //   );
  // }

  Widget _buildSubmitButton() {
    return SubmitButton(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text('Soumetre ', style: Styles.submitButtonText),
            Text('Complete ', style: Styles.submitButtonText),
          ],
        ),
      ),
      percentage: 1,
      isErrorVisible: false,
      onPressed: _handleSubmit,
    );
  }

  void _handleSubmit() {
    // if (_formKey.currentState.validate() && formCompletion == 1) {
    // } else
    // setState(() => isFormErrorVisible = true);
  }

  // void _handleItemChange(CreditCardNetwork cardNetwork) {
  //   setState(() => _cardNetwork = cardNetwork);
  // }

  // @override
  // void onItemChange(String name, String value) => values[name] = value;

}
