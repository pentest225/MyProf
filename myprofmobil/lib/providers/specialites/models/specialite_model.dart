
import 'package:json_annotation/json_annotation.dart';
part 'specialite_model.g.dart';

@JsonSerializable()
class SpecialiteItem {
    SpecialiteItem({
        this.model,
        this.pk,
        this.fields,
    });

    String model;
    int pk;
    Fields fields;

    factory SpecialiteItem.fromJson(Map<String, dynamic> json) => _$SpecialiteItemFromJson(json);

}

@JsonSerializable()
class Fields {
    Fields({
        this.nom,
        this.description,
        this.image,
        this.souscategorie,
    });

    String nom;
    String description;
    String image;
    List<Souscategorie> souscategorie;

    factory Fields.fromJson(Map<String, dynamic> json) => _$FieldsFromJson(json);
}

@JsonSerializable()
class Souscategorie {
    Souscategorie({
        this.pk,
        this.nom,
        this.categorie,
        this.image,
        this.dateAdd,
        this.dateUpd,
        this.status,
    });

    int pk;
    String nom;
    int categorie;
    String image;
    DateTime dateAdd;
    DateTime dateUpd;
    bool status;

    factory Souscategorie.fromJson(Map<String, dynamic> json) => _$SouscategorieFromJson(json);

}