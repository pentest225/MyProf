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

    factory CategorieAnnonce.fromJson(Map<String, dynamic> json) => _$CategorieAnnonceFromJson(json);
    Map<String, dynamic> toMap() => _$CategorieAnnonceToJson(this);
}
