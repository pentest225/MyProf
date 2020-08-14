// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'annonce_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategorieAnnonce _$CategorieAnnonceFromJson(Map<String, dynamic> json) {
  return CategorieAnnonce(
    id: json['id'] as int,
    nom: json['nom'] as String,
    description: json['description'] as String,
    image: json['image'] as String,

  );
}

Map<String, dynamic> _$CategorieAnnonceToJson(CategorieAnnonce instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nom': instance.nom,
      'description': instance.description,
      'image': instance.image,
    };
