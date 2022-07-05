import 'package:get/get.dart';

class EditProfileController extends GetxController {
  RxBool isBasicInfoExpanded = true.obs;
  RxBool isServicesExpanded = false.obs;
  RxBool isOperationsExpanded = false.obs;

  RxList services = ['Plumbing', 'Electrician', 'Planner'].obs;
  RxList operatingHours = ['8am - 5pm | mon - fri', '8am - 12pm | sat'].obs;
  RxList servicedAreas = ['Lusaka', 'Ndola', 'Kitwe'].obs;

  // for observable functionality
  RxBool expansionFlag = false.obs;

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

  void changeBasicInfoExpansion(bool value) {
    isBasicInfoExpanded.value = value;
  }

  void changeServiceInfoExpansion(bool value) {
    isServicesExpanded.value = value;
  }

  void changeOperationInfoExpansion(bool value) {
    isOperationsExpanded.value = value;
  }

  void addService(String service) {
    services.add(service);
  }

  void addOperatingHours(String service) {
    operatingHours.add(service);
  }

  void addServicedArea(String service) {
    servicedAreas.add(service);
  }
}
