import 'package:flutter/material.dart';
import 'package:myprofmobil/outils/myStyle.dart';

class MultiSelectedChip extends StatefulWidget {
  final List<String> reportList;
  Function(List<String>) myReturnList;
  MultiSelectedChip(this.reportList, {this.myReturnList});

  @override
  _MultiSelectedChipState createState() => _MultiSelectedChipState();
}

class _MultiSelectedChipState extends State<MultiSelectedChip> {
  bool isSelected = false;
  String selectedChoice = "";
  List<String> selectedChoices = List();
  // this function will build and return the choice list
  _buildChoiceList() {
    List<Widget> choices = List();
    widget.reportList.forEach((item) {
      choices.add(Container(
        padding: const EdgeInsets.all(2.0),
        child: ChoiceChip(
          label: Text(item,style: TextStyle(color: Colors.white),),
          selected: selectedChoices.contains(item),
          onSelected: (selected) {
            setState(() {
             selectedChoices.contains(item)
                  ? selectedChoices.remove(item)
                  : selectedChoices.add(item);
              widget.myReturnList(selectedChoices);
            });
          },
          selectedColor: accanceColor,
          
          backgroundColor: themeColor,
          
        ),
      ));
    });
    return choices;
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(children: _buildChoiceList());
  }
}
