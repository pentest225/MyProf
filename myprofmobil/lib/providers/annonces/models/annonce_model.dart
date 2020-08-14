import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';
part 'annonce_model.g.dart';

@JsonSerializable()
class CategorieAnnonce {
    CategorieAnnonce({
        this.id,
        this.nom,
        this.description,
        this.image,
    });

    final int id;
    final String nom;
    final String description;
    final String image;

    Map<String, dynamic> toMap() => _$CategorieAnnonceToJson(this);
    factory CategorieAnnonce.fromJson(Map<String,dynamic> json) =>_$CategorieAnnonceFromJson(json);



}


@JsonSerializable()
class SousCatAnnonce {
    SousCatAnnonce({
        this.id,
        this.nom,
        this.image,
        this.categorie,
    });

    final int id;
    final String nom;
    final String image;
    final int categorie;

    factory SousCatAnnonce.fromJson(Map<String, dynamic> json) => SousCatAnnonce(
        id: json["id"] == null ? null : json["id"],
        nom: json["nom"] == null ? null : json["nom"],
        image: json["image"] == null ? null : json["image"],
        categorie: json["categorie"] == null ? null : json["categorie"],
    );

    Map<String, dynamic> toMap() => {
        "id": id == null ? null : id,
        "nom": nom == null ? null : nom,
        "image": image == null ? null : image,
        "categorie": categorie == null ? null : categorie,
    };
}
