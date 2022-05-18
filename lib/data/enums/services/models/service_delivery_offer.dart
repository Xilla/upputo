// To parse this JSON data, do
//
//     final serviceDeliveryOffer = serviceDeliveryOfferFromJson(jsonString);

import 'dart:convert';

ServiceDeliveryOffer serviceDeliveryOfferFromJson(String str) =>
    ServiceDeliveryOffer.fromJson(json.decode(str));

String serviceDeliveryOfferToJson(ServiceDeliveryOffer data) =>
    json.encode(data.toJson());

class ServiceDeliveryOffer {
  ServiceDeliveryOffer({
    this.id,
    this.serviceRequestId,
    this.serviceProviderMapId,
    this.discountInPercentage,
    this.estimatedCost,
    this.offerSubmitDate,
    this.isOfferAccepted,
    this.createdAt,
    this.updatedAt,
  });

  int? id;
  int? serviceRequestId;
  int? serviceProviderMapId;
  int? discountInPercentage;
  int? estimatedCost;
  int? offerSubmitDate;
  bool? isOfferAccepted;
  int? createdAt;
  int? updatedAt;

  factory ServiceDeliveryOffer.fromJson(Map<String, dynamic> json) =>
      ServiceDeliveryOffer(
        id: json["id"],
        serviceRequestId: json["service_request_id"],
        serviceProviderMapId: json["service_provider_map_id"],
        discountInPercentage: json["discount_in_percentage"],
        estimatedCost: json["estimated_cost"],
        offerSubmitDate: json["offer_submit_date"],
        isOfferAccepted: json["is_offer_accepted"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "service_request_id": serviceRequestId,
        "service_provider_map_id": serviceProviderMapId,
        "discount_in_percentage": discountInPercentage,
        "estimated_cost": estimatedCost,
        "offer_submit_date": offerSubmitDate,
        "is_offer_accepted": isOfferAccepted,
        "created_at": createdAt,
        "updated_at": updatedAt,
      };
}
