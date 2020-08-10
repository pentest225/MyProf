import 'package:flutter/material.dart';
import 'package:myprofmobil/providers/specialites/models/specialite_model.dart';
import 'package:myprofmobil/providers/specialites/services/specialite_service.dart';


class Specialites with ChangeNotifier{
  SpecialiteServices _repository = SpecialiteServices();

  List<SpecialiteItem> _items = [];
  List<SpecialiteItem> get items =>  [..._items];

  List<Souscategorie> _matiere = [];
  List<Souscategorie> get matiere =>  [..._matiere];

  Future<void> fetch({query})async{
    _items = await _repository.browser();
    notifyListeners();
  }

  ///**************************************************** */
  /// getSpecialiteByIdCategory  => GET DATA FROM JSON BY CATEGORY GROUP
  ///
   Future<void> getSpecialiteByIdCategory({query : ""})async{
    Iterable _dataIterable = [];
    Iterable<Souscategorie> _data  = [];
    if(query != null && query.isNotEmpty ){
      // j'ecrase a chaque fois la _dataIterable
         _dataIterable = _items.map((element) => element.fields.souscategorie.where((searchByCat){
          return searchByCat.categorie.toString().contains(query);
        })).toList();

      for(var element in _dataIterable){
        if(element.isNotEmpty){
          // j'ecrase a chaque fois la _dataIterable
          _dataIterable = element;
        }   
      }
     _data = new List<Souscategorie>.from(_dataIterable.map((x)=> Souscategorie.fromJson(x)));
    }
     _matiere = _data.toList();
     notifyListeners();
  }

  
}