import 'package:get/get.dart';
import 'package:upputo/modules/home/controller.dart';

class RootBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController(), fenix: true);
  }
}
