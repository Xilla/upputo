import 'package:get/get.dart';
import 'package:upputo/modules/home/home.dart';

class Routes {
  Routes._();

  static final routes = [
    GetPage(name: '/', page: () => const HomeScreen()),
    GetPage(name: '/home', page: () => const HomeScreen())
  ];
}
