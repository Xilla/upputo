// To parse this JSON data, do
//
//     final serviceProviderMap = serviceProviderMapFromJson(jsonString);

import 'dart:convert';

ServiceProviderMap serviceProviderMapFromJson(String str) =>
    ServiceProviderMap.fromJson(json.decode(str));

String serviceProviderMapToJson(ServiceProviderMap data) =>
    json.encode(data.toJson());

class ServiceProviderMap {
  ServiceProviderMap({
    this.id,
    this.serviceId,
    this.providerId,
    this.billingRatePerHour,
    this.experienceInMonths,
    this.serviceOfferingDescription,
    this.createdAt,
    this.updatedAt,
  });

  int? id;
  int? serviceId;
  int? providerId;
  int? billingRatePerHour;
  int? experienceInMonths;
  String? serviceOfferingDescription;
  int? createdAt;
  int? updatedAt;

  factory ServiceProviderMap.fromJson(Map<String, dynamic> json) =>
      ServiceProviderMap(
        id: json["id"],
        serviceId: json["service_id"],
        providerId: json["provider_id"],
        billingRatePerHour: json["billing_rate_per_hour"],
        experienceInMonths: json["experience_in_months"],
        serviceOfferingDescription: json["service_offering_description"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "service_id": serviceId,
        "provider_id": providerId,
        "billing_rate_per_hour": billingRatePerHour,
        "experience_in_months": experienceInMonths,
        "service_offering_description": serviceOfferingDescription,
        "created_at": createdAt,
        "updated_at": updatedAt,
      };
}
