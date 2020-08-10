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
import 'package:myprofmobil/screnn/feature_annonce/models/demo_data.dart';
import 'package:myprofmobil/widgets/finalStep.dart';
import 'form_screen.dart';
import '../styles.dart';

class ThirdStepAnnonce extends StatefulWidget {
  final double pageSize;
  final bool isHidden;
  const ThirdStepAnnonce({Key key, this.pageSize, this.isHidden})
      : super(key: key);
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
        _builProfil(),        
        Separator(),
        // FinalStep(),
        _buildSubmitButton(),
      ],
    );
  }



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
    return Row(
      children: <Widget>[
        Expanded(
          child: RaisedButton(
            color: accanceColor,
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => UserDash()));
            },
            child: Text('Soumetre', style: TextStyle(color: Colors.white)),
          ),
        ),
      ],
    );
  }

  void _handleSubmit() {
   
    // Navigator.of(context).pushNamed(UserDash.routeName);
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
