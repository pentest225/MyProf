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

  ///************************************** */
  ///  METHOD FOR ADD ANNONCE 
  ///

  Future<void> addAnnonce(AnnonceItem annonce)async{
    
        var newAnnonce= AnnonceItem(
          pk: DateTime.now().minute,
          fields:  Fields(
            avatar: annonce.fields.avatar,
            user: annonce.fields.user,
            individuel: annonce.fields.individuel,
            groupe: annonce.fields.groupe,
            titre: annonce.fields.titre,
            parcours: annonce.fields.parcours,
            cv: annonce.fields.cv,
            methodologie: annonce.fields.methodologie,
            lienYoutube: annonce.fields.lienYoutube ?? "",
            commune: annonce.fields.commune,
            webcam: annonce.fields.webcam,
          )
        );
        _items.insert(0, newAnnonce);
        notifyListeners();
  }

  ///************************************** */
  ///  METHOD FOR UPDATEZ  ANNONCE 
  ///
  Future<void> updateItem(String annonceId, AnnonceItem newAnnonce )async{
    final annonceIndex = _items.indexWhere((existingIndex)=> existingIndex.pk.toString() == annonceId);

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
    final annonceIndex = _items.indexWhere((existingIndex)=> existingIndex.pk.toString() == id);
    items.removeAt(annonceIndex);
    notifyListeners();
  }

}