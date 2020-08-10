import 'package:json_annotation/json_annotation.dart';
part 'annonce_model.g.dart';


@JsonSerializable()
class AnnonceItem {
    AnnonceItem({
        this.pk,
        this.fields,
    });

    int pk;
    Fields fields;

    factory AnnonceItem.fromJson(Map<String, dynamic> json) => _$AnnonceItemFromJson(json);
}
@JsonSerializable()
class Fields {
    Fields({
        this.avatar,
        this.user,
        this.individuel,
        this.groupe,
        this.titre,
        this.parcours,
        this.cv,
        this.methodologie,
        this.lienYoutube,
        this.commune,
        this.webcam,
        this.chezEleve,
        this.chezProfesseur,
        this.tarifWebcam,
        this.tarif5H,
        this.tarif10H,
        this.tarif,
        this.transport,
        this.pack5Heures,
        this.pack10Heures,
        this.offrePremierCours,
        this.slug,
        this.isTermine,
        this.status,
        this.matiere,
        this.niveaux,
    });

    String avatar;
    int user;
    bool individuel;
    bool groupe;
    String titre;
    String parcours;
    String cv;
    String methodologie;
    String lienYoutube;
    String commune;
    bool webcam;
    bool chezEleve;
    bool chezProfesseur;
    int tarifWebcam;
    int tarif5H;
    int tarif10H;
    int tarif;
    int transport;
    bool pack5Heures;
    bool pack10Heures;
    bool offrePremierCours;
    String slug;
    bool isTermine;
    bool status;
    List<dynamic> matiere;
    List<Niveau> niveaux;

    factory Fields.fromJson(Map<String, dynamic> json) => _$FieldsFromJson(json);

}

@JsonSerializable()
class Niveau {
    Niveau({
        this.pk,
        this.titre,
    });

    int pk;
    String titre;

    factory Niveau.fromJson(Map<String, dynamic> json) => _$NiveauFromJson(json);


}
