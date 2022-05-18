// To parse this JSON data, do
//
//     final serviceRequest = serviceRequestFromJson(jsonString);

import 'dart:convert';

ServiceRequest serviceRequestFromJson(String str) =>
    ServiceRequest.fromJson(json.decode(str));

String serviceRequestToJson(ServiceRequest data) => json.encode(data.toJson());

class ServiceRequest {
  ServiceRequest({
    this.id,
    this.customerId,
    this.addressId,
    this.serviceId,
    this.requirementsDesc,
    this.serviceRequireOn,
    this.expectedStartTime,
    this.tentativeEffortsRequiredInHours,
    this.createdAt,
    this.updatedAt,
  });

  int? id;
  int? customerId;
  int? addressId;
  int? serviceId;
  String? requirementsDesc;
  int? serviceRequireOn;
  int? expectedStartTime;
  int? tentativeEffortsRequiredInHours;
  int? createdAt;
  int? updatedAt;

  factory ServiceRequest.fromJson(Map<String, dynamic> json) => ServiceRequest(
        id: json["id"],
        customerId: json["customer_id"],
        addressId: json["address_id"],
        serviceId: json["service_id"],
        requirementsDesc: json["requirements_desc"],
        serviceRequireOn: json["service_require_on"],
        expectedStartTime: json["expected_start_time"],
        tentativeEffortsRequiredInHours:
            json["tentative_efforts_required_in_hours"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "customer_id": customerId,
        "address_id": addressId,
        "service_id": serviceId,
        "requirements_desc": requirementsDesc,
        "service_require_on": serviceRequireOn,
        "expected_start_time": expectedStartTime,
        "tentative_efforts_required_in_hours": tentativeEffortsRequiredInHours,
        "created_at": createdAt,
        "updated_at": updatedAt,
      };
}
