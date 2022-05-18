// To parse this JSON data, do
//
//     final provider = providerFromJson(jsonString);

import 'dart:convert';

Provider providerFromJson(String str) => Provider.fromJson(json.decode(str));

String providerToJson(Provider data) => json.encode(data.toJson());

class Provider {
  Provider({
    this.id,
    this.firstName,
    this.lastName,
    this.email,
    this.phoneNumber,
    this.isIndividual,
    this.isRegisteredOffice,
    this.bio,
    this.createdAt,
    this.updatedAt,
  });

  int? id;
  String? firstName;
  String? lastName;
  String? email;
  String? phoneNumber;
  bool? isIndividual;
  bool? isRegisteredOffice;
  String? bio;
  int? createdAt;
  int? updatedAt;

  factory Provider.fromJson(Map<String, dynamic> json) => Provider(
        id: json["id"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        email: json["email"],
        phoneNumber: json["phone_number"],
        isIndividual: json["is_individual"],
        isRegisteredOffice: json["is_registered_office"],
        bio: json["bio"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "first_name": firstName,
        "last_name": lastName,
        "email": email,
        "phone_number": phoneNumber,
        "is_individual": isIndividual,
        "is_registered_office": isRegisteredOffice,
        "bio": bio,
        "created_at": createdAt,
        "updated_at": updatedAt,
      };
}
