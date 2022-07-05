import 'package:get/get.dart';
import 'package:upputo/modules/categories/controller.dart';
import 'package:upputo/modules/category_services/controller.dart';
import 'package:upputo/modules/edit_profile/controller.dart';
import 'package:upputo/modules/home/controller.dart';
import 'package:upputo/modules/make_offer/controller.dart';
import 'package:upputo/modules/offer_details/controller.dart';
import 'package:upputo/modules/offers/controller.dart';
import 'package:upputo/modules/profile/controller.dart';
import 'package:upputo/modules/request_details/controller.dart';
import 'package:upputo/modules/request_service/controller.dart';
import 'package:upputo/modules/service_details/controller.dart';
import 'package:upputo/modules/service_provider_details/controller.dart';
import 'package:upputo/modules/service_requests/controller.dart';

class RootBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController(), fenix: true);
    Get.lazyPut<CategoriesController>(() => CategoriesController(),
        fenix: true);
    Get.lazyPut<ServiceRequestsController>(() => ServiceRequestsController(),
        fenix: true);
    Get.lazyPut<CategoryServicesController>(() => CategoryServicesController(),
        fenix: true);
    Get.lazyPut<ServiceDetailsController>(() => ServiceDetailsController(),
        fenix: true);
    Get.lazyPut<ServiceProviderDetailsController>(
        () => ServiceProviderDetailsController(),
        fenix: true);
    Get.lazyPut<RequestServiceController>(() => RequestServiceController(),
        fenix: true);
    Get.lazyPut<RequestDetailsController>(() => RequestDetailsController(),
        fenix: true);
    Get.lazyPut<OffersController>(() => OffersController(), fenix: true);
    Get.lazyPut<OfferDetailsController>(() => OfferDetailsController(),
        fenix: true);
    Get.lazyPut<MakeOfferController>(() => MakeOfferController(), fenix: true);
    Get.lazyPut<ProfileController>(() => ProfileController(), fenix: true);
    Get.lazyPut<EditProfileController>(() => EditProfileController(),
        fenix: true);
  }
}
