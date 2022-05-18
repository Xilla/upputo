// To parse this JSON data, do
//
//     final customer = customerFromJson(jsonString);

import 'dart:convert';

Customer customerFromJson(String str) => Customer.fromJson(json.decode(str));

String customerToJson(Customer data) => json.encode(data.toJson());

class Customer {
  Customer({
    this.id,
    this.firstName,
    this.lastName,
    this.email,
    this.phoneNumber,
    this.createdAt,
    this.updatedAt,
  });

  int? id;
  String? firstName;
  String? lastName;
  String? email;
  String? phoneNumber;
  int? createdAt;
  int? updatedAt;

  factory Customer.fromJson(Map<String, dynamic> json) => Customer(
        id: json["id"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        email: json["email"],
        phoneNumber: json["phone_number"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "first_name": firstName,
        "last_name": lastName,
        "email": email,
        "phone_number": phoneNumber,
        "created_at": createdAt,
        "updated_at": updatedAt,
      };
}
