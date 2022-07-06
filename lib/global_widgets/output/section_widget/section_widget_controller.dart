import 'package:get/get.dart';

class SectionWidgetController extends GetxController {
  RxBool isSectionExpanded = false.obs;

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

  void changeSectionExpansion(bool value) {
    isSectionExpanded.value = value;
  }
}
