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
    factory CategorieAnnonce.fromMap(Map<String,dynamic> json) =>_$CategorieAnnonceFromJson(json);



}


@JsonSerializable()
class AnnonceByCategory {
    AnnonceByCategory({
        this.id,
        this.catsouscat, // non
        this.nom,
        this.description,//non
        this.image, 
        this.categorie, //oui 
    });

    int id;
    List<AnnonceByCategory> catsouscat;
    String nom;
    String description;
    String image;
    CategorieAnnonce categorie;

    factory AnnonceByCategory.fromJson(Map<String, dynamic> json) => _$AnnonceByCategoryFromJson(json);

    Map<String, dynamic> toJson() => _$AnnonceByCategoryToJson(this);
}
