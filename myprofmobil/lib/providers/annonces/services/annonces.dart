import 'dart:io';

import 'package:myprofmobil/providers/annonces/models/annonce_model.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;




class AnnonceServices {

  static String _baseUrl = 'https://myprof.ci';
  static Map<String, String> _requestHeaders = {
    HttpHeaders.authorizationHeader : 'Api-Key 8JSYfTvU.5mfxkao0uzk4LdQDDUWO3nOyN59l70XY'
  };

///************************ */
/// RECUPERER TOUTES LES ANNONCE
///
  static Future<List<CategorieAnnonce>> fetchAnnonce()async {
    try {
      http.Response response = await http.get(
        "$_baseUrl/web/api/categorie/", headers: _requestHeaders,
      );
      if (response.statusCode == 200) {
        print("//////////FETCH ANONCE ////////////");
        final data = json.decode(response.body);
        Iterable<CategorieAnnonce> _cat = new List<CategorieAnnonce>.from(
            data.map((x) => CategorieAnnonce.fromJson(x)));
        return _cat.toList();
      }
    } catch (error) {
      return throw error;
    }
  }


///************************ */
/// RECUPERER TOUTES LES ANNONCE A PARTIR D'UNE CATEGORIE
///
  static Future<AnnonceByCategory> fetchById(String idCategorie)async {
    try {
      http.Response response = await http.get(
        "$_baseUrl/web/api/categorie/$idCategorie/", headers: _requestHeaders,
      );


      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        /*Iterable<AnnonceByCategory> _cat = new List<AnnonceByCategory>.from(
            data["catsouscat"].map((x) => AnnonceByCategory.fromJson(x)));

         */
        //return AnnonceByCategory.fromJson(data);
        return AnnonceByCategory.fromJson(data);
      }
    } catch (error) {
      return throw error;
    }
  }

  ///************************ */
  /// UPDATE ANNONCE
  ///

  static Future<List<CategorieAnnonce>> updateAnnonce(String idUser,Map<String, dynamic> data)async {
    try {
      await http.patch("$_baseUrl/dashboard/api/annonce/$idUser/", 
        headers: _requestHeaders,
        body: data
      );
    } catch (error) {
      return throw error;
    }
  }

  ///************************ */
  /// REMOVES ANNONCE
  ///
  static Future<void> removeAnnonce(String id)async=> await http.delete("$_baseUrl/dashboard/api/annonce/$id/");

}

void main(){

  AnnonceServices.fetchById("5").then((value){
    print(value);
  });

}
