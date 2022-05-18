// To parse this JSON data, do
//
//     final serviceCategory = serviceCategoryFromJson(jsonString);

import 'dart:convert';

ServiceCategory serviceCategoryFromJson(String str) =>
    ServiceCategory.fromJson(json.decode(str));

String serviceCategoryToJson(ServiceCategory data) =>
    json.encode(data.toJson());

class ServiceCategory {
  ServiceCategory({
    this.id,
    this.categoryName,
    this.createdAt,
    this.updatedAt,
  });

  int? id;
  String? categoryName;
  int? createdAt;
  int? updatedAt;

  factory ServiceCategory.fromJson(Map<String, dynamic> json) =>
      ServiceCategory(
        id: json["id"],
        categoryName: json["category_name"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "category_name": categoryName,
        "created_at": createdAt,
        "updated_at": updatedAt,
      };
}
