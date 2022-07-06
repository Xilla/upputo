import 'package:get/get.dart';

class FavoritesController extends GetxController {
  RxList favoriteServices =
      ['Plumbing', 'Electrician', 'Physio', 'Consultation'].obs;

  RxList<String> favoriteServiceProviders =
      ['Steph Palmer', 'Adam Eve', 'Mahmoud Ali'].obs;

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
