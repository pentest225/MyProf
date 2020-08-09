import 'package:flutter/material.dart';
import 'package:myprofmobil/screnn/feature_annonce/components/section_separator.dart';
import 'package:myprofmobil/screnn/feature_annonce/components/section_title.dart';
import 'package:myprofmobil/screnn/feature_annonce/components/stack_pages_route.dart';
import 'package:myprofmobil/screnn/feature_annonce/components/submit_button.dart';
import 'package:myprofmobil/screnn/feature_annonce/form_inputs/text_input.dart';
import 'package:myprofmobil/screnn/feature_annonce/main_annonce.dart';
import 'package:provider/provider.dart';

import 'package:flutter/scheduler.dart' show timeDilation;

import '../models/demo_data.dart';
import '../models/form_mixin.dart';
import 'form_screen.dart';
import '../styles.dart';
import 'from_section_primary.dart';
import 'from_section_third.dart'; //SecondStepAnnonce

class SecondStepAnnonce extends StatefulWidget {
  final double pageSize;
  final bool isHidden;

  const SecondStepAnnonce({Key key, this.pageSize, this.isHidden = false})
      : super(key: key);

  @override
  _SecondStepAnnonceState createState() => _SecondStepAnnonceState();
}

class _SecondStepAnnonceState extends State<SecondStepAnnonce> with FormMixin {
  final _formKey = GlobalKey<FormState>();
  bool isSelected = false;
  String radioItem = '';
  String radioItem1 = '';
  String radioItem2 = '';
  bool isOffert = true;
  bool isDomicile = false;
  bool isStudent = true;
  bool isWebcam = false;

  List<String> categories = [
    '1 H',
    '45 M',
  ];
  String _chosenValue = '1 H';

  SharedFormState formState;
  Map<String, String> get values => formState.valuesByName;

  @override
  void initState() {
    super.initState();
    formState = Provider.of<SharedFormState>(context, listen: false);
  }

  @override
  Widget build(BuildContext context) {
    return FormPage(
      formKey: _formKey,
      isHidden: widget.isHidden,
      pageSizeProportion: widget.pageSize ?? 0.85,
      title: 'annonce etape 2',
      children: <Widget>[
        FormSectionTitle("Trouvons un beau titre pour votre annonce"),
        TextFormField(
          maxLines: 6,
          minLines: 4,
          style: Styles.inputLabel,
          decoration: Styles.getInputDecoration(
              helper: "Ex: Ingénieur informatique donne des cours..."),
        ),
        Separator(),
        FormSectionTitle("Parlez nous un peux de votre Parcour"),
        TextFormField(
          maxLines: 8,
          minLines: 6,
          style: Styles.inputLabel,
          decoration: Styles.getInputDecoration(
              helper: "Ex: Titulaire d'une Licence en Informatique de L'université Nanguy Abro..."),
        ),
        Separator(),

        FormSectionTitle("Quelle est votre methodologie d'enseignement ?"),
        TextFormField(
          maxLines: 8,
          minLines: 6,
          style: Styles.inputLabel,
          decoration: Styles.getInputDecoration(
              helper: "Ex: Je Propose une formations depuis la base jusqu'au ..."),
        ),
        SubmitButton(
            isErrorVisible: isFormErrorVisible,
            child: Text('Next', style: Styles.submitButtonText),
            onPressed: () => _handleSubmit(context)),
      ],
    );
  }

  TextInput _buildText(String key,
      {String title, bool required = false, InputType type = InputType.text}) {
    title = title ?? _snakeToTitleCase(key);
    if (!validInputsMap.containsKey(key)) validInputsMap[key] = !required;

    return TextInput(
      key: ValueKey(key),
      helper: title,
      type: type,
      initialValue: _getFormValue(key),
      onValidate: onItemValidate,
      onChange: onItemChange,
      isRequired: required,
    );
  }

  @override
  void onItemValidate(String key, bool isValid, {String value}) {}

  @override
  void onItemChange(String key, String value) {
    values[key] = value;
  }

  String _snakeToTitleCase(String value) {
    String capitalize(String s) => s[0].toUpperCase() + s.substring(1);
    List<String> words = value.split("_");
    words = words.map((w) => capitalize(w)).toList();
    return words.join(" ");
  }

  String _getFormValue(String name) {
    return values.containsKey(name) ? values[name] : "";
  }

  void _handleSubmit(BuildContext context) {
    // if (_formKey.currentState.validate() && formCompletion == 1) {
    if (true) {
      Navigator.push(
          context,
          StackPagesRoute(previousPages: [
            FirstStepAnnonce(isHidden: true, pageSize: .85),
            SecondStepAnnonce(isHidden: true, pageSize: .85),
          ], enterPage: ThirdStepAnnonce()));
    } else
      setState(() {
        isFormErrorVisible = true;
      });
  }
}
