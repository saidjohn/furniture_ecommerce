class Address implements Comparable<Address> {
  String id;
  String usedid;
  String createdAt;
  String modifyAt;
  String title;
  String address;
  double lat;
  double Ing;
  String zipCode;
  String street;
  String city;
  String region;
  String country;

  Address(
      {required this.id,
      required this.usedid,
      required this.createdAt,
      required this.modifyAt,
      required this.title,
      required this.address,
      required this.lat,
      required this.Ing,
      required this.zipCode,
      required this.street,
      required this.city,
      required this.region,
      required this.country});

  @override
  int compareTo(Address other) {
    return id.compareTo(other.id);
  }

  factory Address.fromJson(Map<String, Object?> json) => Address(
      id: json["id"] as String,
      usedid: json["usedld"] as String,
      createdAt: json["createdAt"] as String,
      modifyAt: json["modifyAt"] as String,
      title: json["title"] as String,
      address: json["address"] as String,
      lat: json["lat"] as double,
      Ing: json["Ing"] as double,
      zipCode: json["zipCode"] as String,
      street: json["street"] as String,
      city: json["city"] as String,
      region: json["region"] as String,
      country: json["country"] as String);

  Map<String, Object?> toJson() => {
        "id": id,
        "usedld": usedid,
        "createdAt": createdAt,
        "modifyAt": modifyAt,
        "title": title,
        "address": address,
        "lat": lat,
        "Ing": Ing,
        "zipCode": zipCode,
        "street": street,
        "city": city,
        "region": region,
        "country": country
      };

  @override
  String toString() {
    return 'Address{id: $id, usedld: $usedid, createdAt: $createdAt, modifyAt: $modifyAt, title: $title, address: $address, lat: $lat, Ing: $Ing, zipCode: $zipCode, street: $street, city: $city, region: $region, country: $country}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Address &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          usedid == other.usedid &&
          createdAt == other.createdAt &&
          modifyAt == other.modifyAt &&
          title == other.title &&
          address == other.address &&
          lat == other.lat &&
          Ing == other.Ing &&
          zipCode == other.zipCode &&
          street == other.street &&
          city == other.city &&
          region == other.region &&
          country == other.country;

  @override
  int get hashCode =>
      id.hashCode ^
      usedid.hashCode ^
      createdAt.hashCode ^
      modifyAt.hashCode ^
      title.hashCode ^
      address.hashCode ^
      lat.hashCode ^
      Ing.hashCode ^
      zipCode.hashCode ^
      street.hashCode ^
      city.hashCode ^
      region.hashCode ^
      country.hashCode;
}
