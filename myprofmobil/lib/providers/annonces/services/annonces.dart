import 'package:flutter/services.dart' show rootBundle;
import 'package:myprofmobil/providers/annonces/models/annonce_model.dart';
import 'dart:convert';


class AnnonceServices {

   String _url = 'assets/json/annonce.json';

   Future<String> _loadJsonSpecialiteByCategory() async =>  await rootBundle.loadString(_url);

   Future<List<AnnonceItem>> browser({query : ""})async{

    var content = await _loadJsonSpecialiteByCategory();
    var contactDecode = json.decode(content);
    Iterable<AnnonceItem> _dataIterable = 
         List<AnnonceItem>.from(contactDecode.map((x)=> AnnonceItem.fromJson(x)));
    
    // await Future.delayed(Duration(seconds: 1));
    
    if(query != null && query.isNotEmpty ){

      _dataIterable = _dataIterable.where(
        (data) => data.fields.user.toString().contains(query),);
    }
    return _dataIterable.toList();
  }

}
