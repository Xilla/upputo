// To parse this JSON data, do
//
//     final rateCategory = rateCategoryFromJson(jsonString);

import 'dart:convert';

RateCategory rateCategoryFromJson(String str) =>
    RateCategory.fromJson(json.decode(str));

String rateCategoryToJson(RateCategory data) => json.encode(data.toJson());

class RateCategory {
  RateCategory({
    this.title,
    this.price,
    this.unit,
    this.subCategory,
  });

  String? title;
  double? price;
  String? unit;
  List<SubCategory>? subCategory;

  factory RateCategory.fromJson(Map<String, dynamic> json) => RateCategory(
        title: json["title"],
        price: json["price"].toDouble(),
        unit: json["unit"],
        subCategory: List<SubCategory>.from(
            json["SubCategory"].map((x) => SubCategory.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "price": price,
        "unit": unit,
        "SubCategory": List<dynamic>.from(subCategory!.map((x) => x.toJson())),
      };
}

class SubCategory {
  SubCategory({
    this.name,
    this.price,
    this.unit,
    this.entry,
  });

  String? name;
  double? price;
  String? unit;
  List<Entry>? entry;

  factory SubCategory.fromJson(Map<String, dynamic> json) => SubCategory(
        name: json["name"],
        price: json["price"].toDouble(),
        unit: json["unit"],
        entry: List<Entry>.from(json["Entry"].map((x) => Entry.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "price": price,
        "unit": unit,
        "Entry": List<dynamic>.from(entry!.map((x) => x.toJson())),
      };
}

class Entry {
  Entry({
    this.entry,
    this.price,
    this.unit,
  });

  String? entry;
  double? price;
  String? unit;

  factory Entry.fromJson(Map<String, dynamic> json) => Entry(
        entry: json["entry"],
        price: json["price"].toDouble(),
        unit: json["unit"],
      );

  Map<String, dynamic> toJson() => {
        "entry": entry,
        "price": price,
        "unit": unit,
      };
}
