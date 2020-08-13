import 'package:json_annotation/json_annotation.dart';
part 'annonce_model.g.dart';


@JsonSerializable()
class CategoryAnnonce {
    CategoryAnnonce({
        this.id,
        this.catsouscat,
        this.nom,
        this.description,
        this.image,
        this.dateAdd,
        this.dateUpd,
        this.status,
        this.matiereAnnonce,
        this.categorie,
    });

    int id;
    List<CategoryAnnonce> catsouscat;
    String nom;
    String description;
    String image;
    DateTime dateAdd;
    DateTime dateUpd;
    bool status;
    List<MatiereAnnonce> matiereAnnonce;
    CategoryAnnonce categorie;

    factory CategoryAnnonce.fromJson(Map<String, dynamic> json) => _$CategoryAnnonceFromJson(json);

    Map<String, dynamic> toMap() => _$CategoryAnnonceToJson(this);

}

@JsonSerializable()
class MatiereAnnonce {
    MatiereAnnonce({
        this.id,
        this.avatar,
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
        this.dateAdd,
        this.dateUpd,
        this.status,
        this.user,
        this.matiere,
        this.niveaux,
    });

    int id;
    String avatar;
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
    DateTime dateAdd;
    DateTime dateUpd;
    bool status;
    int user;
    List<int> matiere;
    List<int> niveaux;

    factory MatiereAnnonce.fromJson(Map<String, dynamic> json) => _$MatiereAnnonceFromJson(json);

    Map<String, dynamic> toMap() => _$MatiereAnnonceToJson(this);
}
