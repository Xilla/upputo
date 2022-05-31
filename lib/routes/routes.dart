import 'package:get/get.dart';
import 'package:upputo/modules/categories/categories.dart';
import 'package:upputo/modules/category_services/category_services.dart';
import 'package:upputo/modules/home/home.dart';
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
  ];
}
