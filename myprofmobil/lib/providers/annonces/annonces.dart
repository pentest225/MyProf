import 'package:flutter/material.dart';
import 'package:myprofmobil/providers/annonces/models/annonce_model.dart';
import 'package:myprofmobil/providers/annonces/services/annonces.dart';


class Annonces with ChangeNotifier{
  

  List<CategorieAnnonce> _items = [];
  List<CategorieAnnonce> get items =>  [..._items];

  Future<void> fetch({query})async{
    print("/////////////FECHT PROVIDER ////////////");
    _items = await AnnonceServices.fetchAnnonce();
    notifyListeners();
  }

  ///**************************************************** */
  /// FIND BY ID  => GET SpecialiteItem
  ///
  CategorieAnnonce findById(String categorieId){



  }


  ///**************************************************** */
  /// FIND BY ID  => GET SpecialiteItem
  ///

  int  selectedAnnoceIndex (String specialiteid) {
    return _items.indexWhere((CategorieAnnonce annonce) {
      return annonce.id.toString() ==  specialiteid;
    });
  }

  ///************************************** */
  ///  METHOD FOR ADD ANNONCE 
  ///

  Future<void> addAnnonce(CategorieAnnonce annonce)async{
    
        var newAnnonce= CategorieAnnonce(
          id: DateTime.now().minute,
        );
        _items.insert(0, newAnnonce);
        notifyListeners();
  }

  ///************************************** */
  ///  METHOD FOR UPDATEZ  ANNONCE 
  ///
  Future<void> updateItem(String annonceId, CategorieAnnonce newAnnonce )async{
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