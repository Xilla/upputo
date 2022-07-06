import 'package:get/get.dart';

class RecentServicesController extends GetxController {
  RxList recentServices = ['Plumbing', 'Electrician', 'Planner'].obs;

  RxList<String> recentServiceProviders =
      ['Peter john', 'Adam Eve', 'Mahmoud Ali'].obs;

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
