import 'package:get/get.dart';
import 'package:upputo/modules/categories/categories.dart';
import 'package:upputo/modules/category_services/category_services.dart';
import 'package:upputo/modules/edit_profile/edit_profile.dart';
import 'package:upputo/modules/home/home.dart';
import 'package:upputo/modules/make_offer/make_offer.dart';
import 'package:upputo/modules/offer_details/offer_details.dart';
import 'package:upputo/modules/offers/offers.dart';
import 'package:upputo/modules/profile/profile.dart';
import 'package:upputo/modules/recent_services/recent_services.dart';
import 'package:upputo/modules/request_details/request_details.dart';
import 'package:upputo/modules/request_service/request_service.dart';
import 'package:upputo/modules/service_details/service_details.dart';
import 'package:upputo/modules/service_provider_details/service_provider_details.dart';
import 'package:upputo/modules/service_requests/service_requests.dart';

class Routes {
  Routes._();

  static final routes = [
    GetPage(name: '/', page: () => const HomeScreen()),
    GetPage(name: '/home', page: () => const HomeScreen()),
    GetPage(name: '/categories', page: () => const CategoriesScreen()),
    GetPage(
        name: '/service-requests', page: () => const ServiceRequestsScreen()),
    GetPage(
        name: '/category-services', page: () => const CategoryServicesScreen()),
    GetPage(name: '/service-details', page: () => const ServiceDetailsScreen()),
    GetPage(
        name: '/service-provider-details',
        page: () => const ServiceProviderDetailsScreen()),
    GetPage(name: '/request-service', page: () => const RequestServiceScreen()),
    GetPage(name: '/request-details', page: () => const RequestDetailsScreen()),
    GetPage(name: '/offers', page: () => const OffersScreen()),
    GetPage(name: '/offer-details', page: () => const OfferDetailsScreen()),
    GetPage(name: '/make-offer', page: () => const MakeOfferScreen()),
    GetPage(name: '/profile', page: () => const ProfileScreen()),
    GetPage(name: '/edit-profile', page: () => const EditProfileScreen()),
    GetPage(name: '/recent-services', page: () => const RecentServicesScreen()),
  ];
}
