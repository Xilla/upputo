import 'package:get/get.dart';

class MakeOfferController extends GetxController {
  RxInt? groupValue;
  @override
  void onInit() {
    groupValue = 1.obs;
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

  updateGroupValue(int value) {
    groupValue!.value = value;
  }
}
