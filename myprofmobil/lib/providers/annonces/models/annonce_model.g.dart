// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'annonce_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoryAnnonce _$CategoryAnnonceFromJson(Map<String, dynamic> json) {
  return CategoryAnnonce(
    id: json['id'] as int,
    catsouscat: (json['catsouscat'] as List)
        ?.map((e) => e == null
            ? null
            : CategoryAnnonce.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    nom: json['nom'] as String,
    description: json['description'] as String,
    image: json['image'] as String,
    dateAdd: json['dateAdd'] == null
        ? null
        : DateTime.parse(json['dateAdd'] as String),
    dateUpd: json['dateUpd'] == null
        ? null
        : DateTime.parse(json['dateUpd'] as String),
    status: json['status'] as bool,
    matiereAnnonce: (json['matiereAnnonce'] as List)
        ?.map((e) => e == null
            ? null
            : MatiereAnnonce.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    categorie: json['categorie'] == null
        ? null
        : CategoryAnnonce.fromJson(json['categorie'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CategoryAnnonceToJson(CategoryAnnonce instance) =>
    <String, dynamic>{
      'id': instance.id,
      'catsouscat': instance.catsouscat,
      'nom': instance.nom,
      'description': instance.description,
      'image': instance.image,
      'dateAdd': instance.dateAdd?.toIso8601String(),
      'dateUpd': instance.dateUpd?.toIso8601String(),
      'status': instance.status,
      'matiereAnnonce': instance.matiereAnnonce,
      'categorie': instance.categorie,
    };

MatiereAnnonce _$MatiereAnnonceFromJson(Map<String, dynamic> json) {
  return MatiereAnnonce(
    id: json['id'] as int,
    avatar: json['avatar'] as String,
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
    dateAdd: json['dateAdd'] == null
        ? null
        : DateTime.parse(json['dateAdd'] as String),
    dateUpd: json['dateUpd'] == null
        ? null
        : DateTime.parse(json['dateUpd'] as String),
    status: json['status'] as bool,
    user: json['user'] as int,
    matiere: (json['matiere'] as List)?.map((e) => e as int)?.toList(),
    niveaux: (json['niveaux'] as List)?.map((e) => e as int)?.toList(),
  );
}

Map<String, dynamic> _$MatiereAnnonceToJson(MatiereAnnonce instance) =>
    <String, dynamic>{
      'id': instance.id,
      'avatar': instance.avatar,
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
      'dateAdd': instance.dateAdd?.toIso8601String(),
      'dateUpd': instance.dateUpd?.toIso8601String(),
      'status': instance.status,
      'user': instance.user,
      'matiere': instance.matiere,
      'niveaux': instance.niveaux,
    };
