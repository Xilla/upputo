// To parse this JSON data, do
//
//     final service = serviceFromJson(jsonString);

import 'dart:convert';

Service serviceFromJson(String str) => Service.fromJson(json.decode(str));

String serviceToJson(Service data) => json.encode(data.toJson());

class Service {
  Service({
    this.id,
    this.serviceCategoryId,
    this.serviceName,
    this.createdAt,
    this.updatedAt,
  });

  int? id;
  int? serviceCategoryId;
  String? serviceName;
  int? createdAt;
  int? updatedAt;

  factory Service.fromJson(Map<String, dynamic> json) => Service(
        id: json["id"],
        serviceCategoryId: json["service_category_id"],
        serviceName: json["service_name"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "service_category_id": serviceCategoryId,
        "service_name": serviceName,
        "created_at": createdAt,
        "updated_at": updatedAt,
      };
}
