import 'package:flutter/material.dart';
import 'package:myprofmobil/providers/annonces/models/annonce_model.dart';
import 'package:myprofmobil/providers/annonces/services/annonces.dart';


class Annonces with ChangeNotifier{
  AnnonceServices _repository = AnnonceServices();

  List<AnnonceItem> _items = [];
  List<AnnonceItem> get items =>  [..._items];

  Future<void> fetch({query})async{
    _items = await _repository.browser(query: query);
    notifyListeners();
  }
  
}