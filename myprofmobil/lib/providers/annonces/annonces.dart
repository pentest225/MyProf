import 'package:flutter/material.dart';
import 'package:myprofmobil/providers/annonces/models/annonce_model.dart';
import 'package:myprofmobil/providers/annonces/services/annonces.dart';


class Annonces with ChangeNotifier{
  

  List<CategoryAnnonce> _items = [];
  List<CategoryAnnonce> get items =>  [..._items];

  Future<void> fetch({query})async{
    _items = await AnnonceServices.fetchAnnonce();
    notifyListeners();
  }

  ///**************************************************** */
  /// FIND BY ID  => GET SpecialiteItem
  ///
  CategoryAnnonce findById(String id) =>_items.firstWhere((annonce) => annonce.id.toString() == id);


  ///**************************************************** */
  /// FIND BY ID  => GET SpecialiteItem
  ///

  int  selectedAnnoceIndex (String specialiteid) {
    return _items.indexWhere((CategoryAnnonce annonce) {
      return annonce.id.toString() ==  specialiteid;
    });
  }

  ///************************************** */
  ///  METHOD FOR ADD ANNONCE 
  ///

  Future<void> addAnnonce(CategoryAnnonce annonce)async{
    
        var newAnnonce= CategoryAnnonce(
          id: DateTime.now().minute,
        );
        _items.insert(0, newAnnonce);
        notifyListeners();
  }

  ///************************************** */
  ///  METHOD FOR UPDATEZ  ANNONCE 
  ///
  Future<void> updateItem(String annonceId, CategoryAnnonce newAnnonce )async{
    final annonceIndex = selectedAnnoceIndex(annonceId);

    if (annonceIndex >= 0) {
      _items[annonceIndex] = newAnnonce;
      notifyListeners();
    }else{
      print("... rien");
    }
  }


  ///************************************** */
  ///  METHOD FOR REMOVE  ANNONCE 
  ///

  Future<void> removeAnnonce(String id)async{
    final annonceIndex = selectedAnnoceIndex(id);
    items.removeAt(annonceIndex);
    notifyListeners();
  }

}