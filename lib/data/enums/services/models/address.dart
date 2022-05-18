// To parse this JSON data, do
//
//     final address = addressFromJson(jsonString);

import 'dart:convert';

Address addressFromJson(String str) => Address.fromJson(json.decode(str));

String addressToJson(Address data) => json.encode(data.toJson());

class Address {
  Address({
    this.id,
    this.customerId,
    this.plot,
    this.street,
    this.area,
    this.city,
    this.state,
    this.createdAt,
    this.updatedAt,
  });

  int? id;
  int? customerId;
  String? plot;
  String? street;
  String? area;
  String? city;
  String? state;
  int? createdAt;
  int? updatedAt;

  factory Address.fromJson(Map<String, dynamic> json) => Address(
        id: json["id"],
        customerId: json["customer_id"],
        plot: json["plot"],
        street: json["street"],
        area: json["area"],
        city: json["city"],
        state: json["state"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "customer_id": customerId,
        "plot": plot,
        "street": street,
        "area": area,
        "city": city,
        "state": state,
        "created_at": createdAt,
        "updated_at": updatedAt,
      };
}
