import 'dart:convert';

class ImmobilierPost {
  final int? immobilierPostId;
  final String? title;
  final String? description;
  final String? imageUrl;
  final double? price;
  final String? adresse;
  final String? countryName;
  final String? cityname;
  final int? contact;
  final double? superficie;

  ImmobilierPost({
    this.immobilierPostId,
    this.title,
    this.description,
    this.imageUrl,
    this.price,
    this.adresse,
    this.countryName,
    this.cityname,
    this.contact,
    this.superficie,
  });

  ImmobilierPost copyWith({
    int? immobilierPostId,
    String? title,
    String? description,
    String? imageUrl,
    double? price,
    String? adresse,
    String? countryName,
    String? cityname,
    int? contact,
    double? superficie,
  }) {
    return ImmobilierPost(
      immobilierPostId: immobilierPostId ?? this.immobilierPostId,
      title: title ?? this.title,
      description: description ?? this.description,
      imageUrl: imageUrl ?? this.imageUrl,
      price: price ?? this.price,
      adresse: adresse ?? this.adresse,
      countryName: countryName ?? this.countryName,
      cityname: cityname ?? this.cityname,
      contact: contact ?? this.contact,
      superficie: superficie ?? this.superficie,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'immobilierPostId': immobilierPostId,
      'title': title,
      'description': description,
      'imageUrl': imageUrl,
      'price': price,
      'adresse': adresse,
      'countryName': countryName,
      'cityname': cityname,
      'contact': contact,
      'superficie': superficie,
    };
  }

  factory ImmobilierPost.fromMap(Map<String, dynamic> map) {
    return ImmobilierPost(
      immobilierPostId: map['id'] != null ? map['id'] : null,
      title: map['title'] != null ? map['title'] : null,
      description: map['description'] != null ? map['description'] : null,
      imageUrl: map['imageUrl'] != null ? map['imageUrl'] : null,
      price: map['price'] != null ? map['price'] : null,
      adresse: map['adresse'] != null ? map['adresse'] : null,
      countryName: map['countryname'] != null ? map['countryname'] : null,
      cityname: map['cityname'] != null ? map['cityname'] : null,
      contact: map['contact'] != null ? map['contact'] : null,
      superficie: map['superficie'] != null ? map['superficie'] : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory ImmobilierPost.fromJson(String source) =>
      ImmobilierPost.fromMap(json.decode(source));

  @override
  String toString() {
    return '{ImmobilierPost(immobilierPostId}: $immobilierPostId, title: $title, description: $description, imageUrl: $imageUrl, price: $price, adresse: $adresse, countryName: $countryName, cityname: $cityname, contact: $contact, superficie: $superficie)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ImmobilierPost &&
        other.immobilierPostId == immobilierPostId &&
        other.title == title &&
        other.description == description &&
        other.imageUrl == imageUrl &&
        other.price == price &&
        other.adresse == adresse &&
        other.countryName == countryName &&
        other.cityname == cityname &&
        other.contact == contact &&
        other.superficie == superficie;
  }

  @override
  int get hashCode {
    return immobilierPostId.hashCode ^
        title.hashCode ^
        description.hashCode ^
        imageUrl.hashCode ^
        price.hashCode ^
        adresse.hashCode ^
        countryName.hashCode ^
        cityname.hashCode ^
        contact.hashCode ^
        superficie.hashCode;
  }
}
