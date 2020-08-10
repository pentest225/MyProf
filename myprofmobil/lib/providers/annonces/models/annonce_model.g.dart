// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'annonce_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnnonceItem _$AnnonceItemFromJson(Map<String, dynamic> json) {
  return AnnonceItem(
    pk: json['pk'] as int,
    fields: json['fields'] == null
        ? null
        : Fields.fromJson(json['fields'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$AnnonceItemToJson(AnnonceItem instance) =>
    <String, dynamic>{
      'pk': instance.pk,
      'fields': instance.fields,
    };

Fields _$FieldsFromJson(Map<String, dynamic> json) {
  return Fields(
    avatar: json['avatar'] as String,
    user: json['user'] as int,
    individuel: json['individuel'] as bool,
    groupe: json['groupe'] as bool,
    titre: json['titre'] as String,
    parcours: json['parcours'] as String,
    cv: json['cv'] as String,
    methodologie: json['methodologie'] as String,
    lienYoutube: json['lienYoutube'] as String,
    commune: json['commune'] as String,
    webcam: json['webcam'] as bool,
    chezEleve: json['chezEleve'] as bool,
    chezProfesseur: json['chezProfesseur'] as bool,
    tarifWebcam: json['tarifWebcam'] as int,
    tarif5H: json['tarif5H'] as int,
    tarif10H: json['tarif10H'] as int,
    tarif: json['tarif'] as int,
    transport: json['transport'] as int,
    pack5Heures: json['pack5Heures'] as bool,
    pack10Heures: json['pack10Heures'] as bool,
    offrePremierCours: json['offrePremierCours'] as bool,
    slug: json['slug'] as String,
    isTermine: json['isTermine'] as bool,
    status: json['status'] as bool,
    matiere: json['matiere'] as List,
    niveaux: (json['niveaux'] as List)
        ?.map((e) =>
            e == null ? null : Niveau.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$FieldsToJson(Fields instance) => <String, dynamic>{
      'avatar': instance.avatar,
      'user': instance.user,
      'individuel': instance.individuel,
      'groupe': instance.groupe,
      'titre': instance.titre,
      'parcours': instance.parcours,
      'cv': instance.cv,
      'methodologie': instance.methodologie,
      'lienYoutube': instance.lienYoutube,
      'commune': instance.commune,
      'webcam': instance.webcam,
      'chezEleve': instance.chezEleve,
      'chezProfesseur': instance.chezProfesseur,
      'tarifWebcam': instance.tarifWebcam,
      'tarif5H': instance.tarif5H,
      'tarif10H': instance.tarif10H,
      'tarif': instance.tarif,
      'transport': instance.transport,
      'pack5Heures': instance.pack5Heures,
      'pack10Heures': instance.pack10Heures,
      'offrePremierCours': instance.offrePremierCours,
      'slug': instance.slug,
      'isTermine': instance.isTermine,
      'status': instance.status,
      'matiere': instance.matiere,
      'niveaux': instance.niveaux,
    };

Niveau _$NiveauFromJson(Map<String, dynamic> json) {
  return Niveau(
    pk: json['pk'] as int,
    titre: json['titre'] as String,
  );
}

Map<String, dynamic> _$NiveauToJson(Niveau instance) => <String, dynamic>{
      'pk': instance.pk,
      'titre': instance.titre,
    };
