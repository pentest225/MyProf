import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

import 'package:myprofmobil/providers/specialites/models/specialite_model.dart';


class SpecialiteServices {

   String _url = 'assets/json/specialite.json';

   Future<String> _loadJsonSpecialiteByCategory() async =>  await rootBundle.loadString(_url);

   Future<List<SpecialiteItem>> browser({query : ""})async{

    var content = await _loadJsonSpecialiteByCategory();
    var contactDecode = json.decode(content);
    Iterable<SpecialiteItem> _dataIterable = new List<SpecialiteItem>.from(contactDecode.map((x)=> SpecialiteItem.fromJson(x)));
        
    if(query != null && query.isNotEmpty ){
      _dataIterable = _dataIterable.where(
        (data) => data.fields.nom.contains(query),);

    }
    return _dataIterable.toList();
  }

}
