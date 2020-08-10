import 'package:flutter/material.dart';
import 'package:myprofmobil/providers/specialites/models/specialite_model.dart';
import 'package:myprofmobil/providers/specialites/services/specialite_service.dart';


class Specialites with ChangeNotifier{
  SpecialiteServices _repository = SpecialiteServices();

  List<SpecialiteItem> _items = [];
  List<SpecialiteItem> get items =>  [..._items];

  Future<void> fetch({query})async{
    _items = await _repository.browser();
    notifyListeners();
  }
  
}