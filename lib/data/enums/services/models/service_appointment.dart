// To parse this JSON data, do
//
//     final serviceAppointment = serviceAppointmentFromJson(jsonString);

import 'dart:convert';

ServiceAppointment serviceAppointmentFromJson(String str) =>
    ServiceAppointment.fromJson(json.decode(str));

String serviceAppointmentToJson(ServiceAppointment data) =>
    json.encode(data.toJson());

class ServiceAppointment {
  ServiceAppointment({
    this.id,
    this.serviceDeliveryOfferId,
    this.serviceDeliverOn,
    this.serviceStartTime,
    this.serviceEndTime,
    this.createdAt,
    this.updatedAt,
  });

  int? id;
  int? serviceDeliveryOfferId;
  int? serviceDeliverOn;
  int? serviceStartTime;
  int? serviceEndTime;
  int? createdAt;
  int? updatedAt;

  factory ServiceAppointment.fromJson(Map<String, dynamic> json) =>
      ServiceAppointment(
        id: json["id"],
        serviceDeliveryOfferId: json["service_delivery_offer_id"],
        serviceDeliverOn: json["service_deliver_on"],
        serviceStartTime: json["service_start_time"],
        serviceEndTime: json["service_end_time"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "service_delivery_offer_id": serviceDeliveryOfferId,
        "service_deliver_on": serviceDeliverOn,
        "service_start_time": serviceStartTime,
        "service_end_time": serviceEndTime,
        "created_at": createdAt,
        "updated_at": updatedAt,
      };
}
