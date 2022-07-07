import 'package:get/get.dart';
import 'package:upputo/modules/rate_card/local_models/rate_card_models.dart';

class RateCardController extends GetxController {
  static const rates = [
    {
      "title": "Session Pricing",
      "price": 250,
      "unit": "hour",
      "SubCategory": [
        {
          "name": "Package One",
          "price": 50,
          "unit": "hour",
          "Entry": [
            {"entry": "One hour session", "price": 10, "unit": "hour"},
            {"entry": "One location", "price": 10, "unit": "hour"},
            {"entry": "One photo album", "price": 10, "unit": "hour"}
          ]
        },
        {
          "name": "Package Two",
          "price": 50,
          "unit": "hour",
          "Entry": [
            {"entry": "Two hour session", "price": 10, "unit": "hour"},
            {"entry": "Two location", "price": 10, "unit": "hour"},
            {"entry": "One photo album", "price": 10, "unit": "hour"}
          ]
        }
      ]
    },
    {
      "title": "Product Pricing",
      "price": 250,
      "unit": "hour",
      "SubCategory": [
        {
          "name": "Canvas",
          "price": 50,
          "unit": "hour",
          "Entry": [
            {"entry": "5 x 7", "price": 10, "unit": "each"},
            {"entry": "8 x 7", "price": 10, "unit": "each"},
          ]
        },
        {
          "name": "Prints",
          "price": 50,
          "unit": "hour",
          "Entry": [
            {"entry": "4 x 6", "price": 10, "unit": "each"},
            {"entry": "5 x 7", "price": 10, "unit": "each"},
          ]
        }
      ]
    },
  ];

  List<RateCategory> cardRates =
      rates.map((e) => RateCategory.fromJson(e)).toList();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  @override
  void dispose() {
    super.dispose();
  }
}
