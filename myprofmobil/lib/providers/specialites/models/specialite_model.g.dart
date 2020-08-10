// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'specialite_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpecialiteItem _$SpecialiteItemFromJson(Map<String, dynamic> json) {
  return SpecialiteItem(
    model: json['model'] as String,
    pk: json['pk'] as int,
    fields: json['fields'] == null
        ? null
        : Fields.fromJson(json['fields'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SpecialiteItemToJson(SpecialiteItem instance) =>
    <String, dynamic>{
      'model': instance.model,
      'pk': instance.pk,
      'fields': instance.fields,
    };

Fields _$FieldsFromJson(Map<String, dynamic> json) {
  return Fields(
    nom: json['nom'] as String,
    description: json['description'] as String,
    image: json['image'] as String,
    souscategorie: (json['souscategorie'] as List)
        ?.map((e) => e == null
            ? null
            : Souscategorie.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$FieldsToJson(Fields instance) => <String, dynamic>{
      'nom': instance.nom,
      'description': instance.description,
      'image': instance.image,
      'souscategorie': instance.souscategorie,
    };

Souscategorie _$SouscategorieFromJson(Map<String, dynamic> json) {
  return Souscategorie(
    pk: json['pk'] as int,
    nom: json['nom'] as String,
    categorie: json['categorie'] as int,
    image: json['image'] as String,
    dateAdd: json['dateAdd'] == null
        ? null
        : DateTime.parse(json['dateAdd'] as String),
    dateUpd: json['dateUpd'] == null
        ? null
        : DateTime.parse(json['dateUpd'] as String),
    status: json['status'] as bool,
  );
}

Map<String, dynamic> _$SouscategorieToJson(Souscategorie instance) =>
    <String, dynamic>{
      'pk': instance.pk,
      'nom': instance.nom,
      'categorie': instance.categorie,
      'image': instance.image,
      'dateAdd': instance.dateAdd?.toIso8601String(),
      'dateUpd': instance.dateUpd?.toIso8601String(),
      'status': instance.status,
    };
